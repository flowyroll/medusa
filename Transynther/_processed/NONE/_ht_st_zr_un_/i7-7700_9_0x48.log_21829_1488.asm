.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1986b, %r15
nop
nop
nop
nop
dec %r14
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub $10306, %rsi
lea addresses_UC_ht+0x9c6b, %rsi
lea addresses_UC_ht+0x12395, %rdi
nop
and %r13, %r13
mov $47, %rcx
rep movsw
nop
nop
nop
nop
nop
add $11927, %rdi
lea addresses_D_ht+0x1960b, %rsi
lea addresses_WC_ht+0x1546b, %rdi
nop
nop
and $6326, %r11
mov $57, %rcx
rep movsl
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1406c, %rsi
nop
nop
nop
nop
dec %rdi
movb (%rsi), %r13b
xor %r13, %r13
lea addresses_UC_ht+0x9a29, %rdi
clflush (%rdi)
nop
nop
nop
add $3615, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rdi)
and %rcx, %rcx
lea addresses_D_ht+0x1346b, %rcx
cmp %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
dec %r13
lea addresses_WC_ht+0x1d38b, %r14
clflush (%r14)
nop
and %rsi, %rsi
mov (%r14), %di
nop
xor %r10, %r10
lea addresses_UC_ht+0xdaeb, %rdi
nop
inc %r11
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
xor $6528, %rsi
lea addresses_normal_ht+0x285d, %rsi
lea addresses_D_ht+0x1e16b, %rdi
clflush (%rdi)
add $61807, %r15
mov $89, %rcx
rep movsb
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x450f, %r15
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xde6b, %rdi
nop
nop
nop
nop
dec %rcx
mov (%rdi), %r14d
nop
nop
nop
and $2546, %r11
lea addresses_WT_ht+0x3b73, %rcx
clflush (%rcx)
nop
nop
sub $48366, %r11
movb (%rcx), %r15b
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rdi

// Faulty Load
lea addresses_WT+0x146b, %rax
nop
nop
nop
xor $36628, %rdi
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'53': 1938, '47': 813, 'df': 8, '49': 78, '48': 28, '46': 117, 'de': 12, '01': 1317, 'ff': 10587, 'd0': 11, '00': 6679, '44': 230, '50': 11}
ff ff 01 ff ff ff 01 44 47 ff ff 00 ff 01 00 ff ff 00 ff 01 00 ff 00 ff 00 00 ff ff 00 ff ff ff 01 00 00 ff ff ff 01 00 ff ff ff 01 ff 53 00 ff 00 ff 01 53 00 ff 46 53 ff 00 ff 00 49 ff 53 00 ff 00 ff 53 00 ff 00 ff ff 00 ff 53 00 ff 00 ff 00 ff ff ff ff ff 00 ff 53 00 00 ff 47 ff 53 00 53 ff 00 ff 00 53 ff ff 00 00 ff 53 00 53 ff ff ff 53 00 ff 00 ff 00 ff ff 00 ff 53 00 ff ff 53 00 00 ff ff ff 00 47 ff 00 ff 53 00 ff ff ff ff ff 01 ff 00 47 53 ff 53 df 00 ff ff ff 00 ff 00 ff ff 00 ff 00 ff 00 00 ff ff 00 00 ff 00 00 ff 00 53 ff 00 00 53 47 00 00 ff ff 53 ff 00 ff 00 ff 00 00 ff ff 53 00 ff 00 53 ff ff ff ff 00 47 00 ff ff 00 ff 00 ff ff ff 00 ff 00 00 00 00 ff 00 44 00 53 ff ff 53 ff ff 00 00 47 47 ff 00 47 ff ff ff ff ff 01 ff 47 00 ff 00 ff 01 ff ff df ff ff 01 ff 00 47 ff 01 00 00 ff ff 53 ff 53 ff ff ff 01 ff ff 47 ff ff 44 ff ff ff 00 53 ff ff 00 ff 01 00 ff 00 ff 00 ff 53 ff ff 01 ff 01 ff 47 ff 01 ff 00 ff 53 ff 00 ff 00 ff 00 ff ff ff ff 01 00 ff 01 00 ff 00 53 49 00 ff 53 00 00 ff ff ff ff 53 53 ff ff ff 47 00 53 ff 53 ff 00 00 ff ff 00 ff ff ff 00 00 ff 00 ff 00 ff 00 00 ff ff ff 00 ff 46 00 ff 44 00 ff 00 ff ff ff ff 53 00 00 ff ff 53 47 ff 00 53 ff ff ff 00 46 ff ff 00 00 ff 53 49 ff ff 00 00 00 00 ff ff 00 ff ff ff 00 ff ff 01 ff 00 ff ff ff 00 00 ff ff ff 00 ff 00 ff ff 01 00 00 47 00 ff ff ff 53 00 00 47 00 47 00 00 53 00 00 00 53 00 00 00 00 ff ff ff 53 47 ff 00 53 ff 53 ff ff ff ff 53 00 00 00 46 ff 47 00 ff ff ff ff 00 00 00 ff 00 ff ff 53 00 ff ff ff 53 00 ff ff ff ff ff 47 ff ff 53 53 00 ff 00 ff 00 ff 00 53 00 ff ff 53 ff ff ff 00 ff 00 ff 01 00 00 ff ff 00 ff 00 47 00 ff ff ff ff ff ff 01 ff 01 ff 00 47 00 ff ff 53 00 ff 00 00 ff ff 00 53 00 00 ff 53 ff 00 00 ff 00 ff ff 00 47 ff 00 ff ff ff ff 53 ff 48 53 ff 00 ff ff ff ff 00 00 ff ff ff ff ff 53 00 00 ff 00 ff 00 ff 47 ff ff ff 01 ff ff 01 00 ff ff ff ff 01 00 ff ff 00 00 53 00 53 00 ff ff 00 00 ff 00 00 ff ff 00 ff 01 44 ff 53 ff 53 47 ff 00 ff ff 47 ff ff 00 ff ff ff ff 01 53 53 ff ff ff ff 01 ff ff 53 00 ff 00 00 00 00 ff ff 00 ff ff ff ff 53 ff 01 47 ff ff 01 00 00 ff ff ff 00 ff 01 ff 47 ff 01 ff 01 00 00 ff ff 00 44 ff ff 49 00 ff 00 ff 00 00 ff ff ff 53 00 ff ff 01 00 47 00 ff 00 00 ff ff ff ff ff ff 01 00 ff 53 ff 00 ff ff ff 53 00 ff 47 00 53 00 48 00 ff 00 ff ff ff 00 00 ff 53 53 00 48 ff ff ff 00 ff ff ff ff 00 ff 00 00 ff 53 ff ff 01 00 ff ff 53 00 00 00 ff ff ff 00 ff ff 00 53 ff 53 00 ff ff ff 53 00 00 ff ff ff 01 44 ff 53 00 00 ff ff 00 00 ff 53 00 ff ff 00 ff ff 53 ff 00 ff ff ff 01 ff ff ff 00 00 53 ff ff 01 53 00 ff 00 ff ff ff 00 ff 00 ff 00 ff ff ff 01 ff 01 ff ff 01 47 00 ff 01 47 00 ff 53 00 ff ff ff 00 00 ff ff 00 47 00 ff 00 ff 00 ff ff ff 00 00 ff ff ff 00 00 53 00 ff ff 00 00 00 00 ff ff 47 47 00 00 00 00 00 ff ff 00 ff 00 00 ff 53 00 ff ff 00 ff 00 ff ff 53 ff 53 00 ff 00 00 ff 00 ff ff 00 00 ff ff 00 00 00 ff 00 ff 00 ff ff ff 53 ff ff ff ff 01 53 ff ff ff 53 ff 49 00 ff ff 46 ff 01 ff 01 00 ff 00 ff 00 00 ff 53 ff ff ff 01 ff 00 ff 01 ff ff
*/
