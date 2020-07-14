.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xdaf1, %rdx
nop
nop
dec %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x10071, %r8
nop
nop
nop
cmp $11272, %rsi
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
sub $21528, %r8
lea addresses_WT_ht+0x1c9f1, %r11
nop
nop
nop
inc %r9
movups (%r11), %xmm1
vpextrq $1, %xmm1, %rdx
nop
xor %r15, %r15
lea addresses_WT_ht+0x1c5f1, %rdx
nop
nop
nop
cmp $59428, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%rdx)
cmp %r11, %r11
lea addresses_A_ht+0x19df1, %rsi
lea addresses_normal_ht+0xc081, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $24353, %r9
mov $26, %rcx
rep movsl
sub $15773, %rcx
lea addresses_A_ht+0x1b11, %r9
clflush (%r9)
nop
nop
inc %rdx
movw $0x6162, (%r9)
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1b811, %rsi
lea addresses_normal_ht+0x39f1, %rdi
sub $51459, %r11
mov $74, %rcx
rep movsl
nop
nop
nop
add $17484, %rcx
lea addresses_WC_ht+0x16b71, %rdx
nop
nop
nop
nop
cmp %r11, %r11
mov (%rdx), %r8w
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xeaf1, %r11
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%r11)
add %rdx, %rdx
lea addresses_WT_ht+0xacf1, %rsi
lea addresses_normal_ht+0x1bbf1, %rdi
nop
nop
nop
cmp $53454, %r8
mov $36, %rcx
rep movsb
nop
nop
cmp $50989, %r11
lea addresses_WC_ht+0x1e2e1, %rsi
lea addresses_WC_ht+0x151f1, %rdi
nop
nop
nop
xor %r11, %r11
mov $44, %rcx
rep movsl
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rdx

// Faulty Load
lea addresses_WC+0x171f1, %r15
nop
nop
nop
nop
nop
and %r13, %r13
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'53': 302, '4d': 9, '3c': 1, '20': 1, 'ff': 11949, '02': 4, '49': 674, '66': 1, '48': 1466, '18': 1, '44': 331, '68': 1, '55': 3, '01': 1750, '86': 2, '45': 483, '00': 4843, '38': 1, '60': 1, '10': 3, '67': 3}
ff 00 00 ff ff 00 ff 00 48 ff 48 ff 00 ff 00 ff ff 00 ff ff 49 ff 01 ff 45 00 00 ff ff 00 ff 48 53 ff ff 48 49 48 ff ff 00 ff ff ff 00 ff ff 00 ff ff ff 01 48 ff ff ff 00 00 ff 01 00 00 ff 45 00 ff 00 00 48 ff ff ff ff ff 01 45 ff ff 00 ff ff ff 00 49 49 ff 00 ff 49 ff 00 00 44 ff ff 00 ff ff 00 ff ff ff 01 00 45 ff ff 48 00 00 00 ff 00 ff ff 00 ff ff ff 00 ff ff 01 ff ff ff 00 ff 01 00 ff ff ff ff ff ff ff 01 ff 44 00 00 00 00 ff 00 ff ff ff 45 ff 00 00 48 44 ff ff ff ff ff ff ff 00 ff 01 ff ff 00 ff 00 00 ff 01 ff 01 ff 01 00 ff ff 00 ff ff ff ff 48 48 00 ff ff 00 ff 00 ff ff 01 ff 00 ff 53 00 48 ff 00 49 ff ff 48 48 ff 53 00 00 ff ff ff ff 48 ff 00 ff ff ff ff 00 00 ff ff ff 45 ff 00 ff 00 ff ff 01 ff ff ff ff ff ff ff ff 00 4d ff 01 48 44 45 ff ff 45 ff ff 00 ff 00 ff ff ff 00 00 ff 01 00 ff 00 49 ff ff ff 00 ff ff 00 48 ff 44 00 ff 44 ff ff ff ff ff ff ff 01 00 45 00 00 00 ff 48 ff ff ff 00 ff ff ff ff ff 01 ff ff 00 ff ff 01 ff 00 00 48 53 ff 48 49 ff 00 48 ff ff 00 ff ff 00 ff 00 00 ff ff ff 00 00 ff ff ff 01 49 00 00 ff ff ff 01 00 ff 00 ff ff 01 45 00 ff 53 00 ff ff ff ff ff ff ff ff ff ff ff ff ff 01 ff ff 00 48 ff 00 ff ff ff 00 ff ff 01 ff 01 48 ff ff 01 ff 00 ff ff ff ff 48 ff 00 ff ff ff ff ff ff 00 ff 01 ff ff ff 01 00 ff ff ff ff ff ff ff 45 48 49 00 ff 00 ff ff ff 00 ff 00 ff 00 00 ff 48 48 00 44 ff ff ff 00 ff 45 00 ff ff ff ff 01 ff ff 00 ff ff 00 ff 01 48 48 ff ff ff 00 49 48 00 49 ff ff 01 ff 01 ff ff ff ff 00 44 ff 48 ff ff ff 00 44 ff ff 48 ff 49 4d ff ff 01 ff ff ff 00 ff ff ff 48 ff 00 53 ff ff 01 ff ff ff ff 00 ff ff ff 01 49 ff 01 ff ff ff ff 01 ff 01 48 00 ff 01 48 ff ff ff 01 ff 01 ff 01 ff 01 ff 01 00 00 00 53 44 00 44 ff ff ff ff ff ff ff ff 01 00 ff 00 ff ff 00 ff 00 ff ff ff 01 ff ff 00 00 ff 00 ff 53 ff 45 53 ff ff ff ff 00 48 00 ff 01 ff 01 ff 00 ff ff ff ff 01 ff 01 00 00 ff ff ff ff ff ff ff ff ff ff 00 ff 00 ff ff 01 ff 00 ff 00 ff ff 00 ff 01 ff 00 00 ff 48 ff ff ff ff 00 ff 00 ff 01 ff 01 ff ff 53 00 00 ff 49 00 00 00 ff ff 00 ff ff 00 48 49 00 48 ff 48 00 00 00 00 ff 00 ff ff 00 45 ff ff 00 ff 00 ff 00 00 ff ff 01 ff 48 ff ff 45 00 ff ff ff 00 00 00 ff ff 45 ff ff 48 00 ff ff ff 48 ff 45 ff ff 01 ff ff ff ff 00 ff ff 01 ff ff ff 01 ff 01 ff 49 ff ff 01 ff 00 ff 49 ff 49 ff 00 00 ff ff 01 44 00 ff 01 ff ff ff 00 00 00 ff ff ff 01 ff ff 01 00 ff 01 ff 00 ff ff 45 ff 00 00 ff 00 ff ff 01 ff ff 45 00 ff ff 00 48 ff ff 01 48 ff ff 49 ff 01 00 00 ff 00 ff 01 ff ff 01 ff 00 49 ff ff ff 49 ff 00 ff ff 00 48 ff 49 ff ff ff ff 00 ff ff 01 ff 01 00 ff 01 ff 01 ff 00 ff 48 ff 00 ff 01 00 00 ff 01 ff ff ff ff 01 ff ff ff ff 01 00 00 ff 00 53 ff ff 01 ff ff ff ff ff 01 ff 01 ff ff ff 00 ff ff ff ff 01 48 48 ff 45 ff ff 00 48 ff ff 00 ff ff 01 ff 01 ff ff 45 ff 01 ff ff 00 53 ff 00 48 ff 00 ff 00 ff ff ff ff 00 ff 01 ff 49 ff ff ff 45 48 ff ff ff ff 00 ff ff 00 ff ff 01 ff 49 ff ff 01 ff 45 00 48 00 ff ff ff ff ff 00 ff 48 ff 48 48 ff 48 ff 00 ff 48 ff 01 00 ff 00 ff 01 00 49 ff ff ff 01 ff 00 00 ff 00 00 ff ff ff 00 ff
*/
