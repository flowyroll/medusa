.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12ce1, %r15
nop
nop
sub $39297, %r8
movl $0x61626364, (%r15)
nop
cmp $24396, %r13
lea addresses_normal_ht+0x1abd, %rbp
nop
inc %r11
mov $0x6162636465666768, %r15
movq %r15, (%rbp)
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0x1bf71, %rsi
lea addresses_A_ht+0x2ae1, %rdi
nop
nop
nop
nop
cmp $28256, %r11
mov $4, %rcx
rep movsw
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x16ee1, %rbp
clflush (%rbp)
nop
nop
nop
nop
dec %r8
movb (%rbp), %r13b
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x15ae1, %r8
nop
xor $62808, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %r8
movntdq %xmm0, (%r8)
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x1e9e1, %r8
nop
nop
nop
nop
dec %r15
movl $0x61626364, (%r8)
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x79e1, %rsi
lea addresses_UC_ht+0x4f59, %rdi
nop
nop
nop
cmp $987, %r8
mov $91, %rcx
rep movsl
xor %r13, %r13
lea addresses_WT_ht+0x10ee1, %r15
nop
nop
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r15)
nop
inc %rsi
lea addresses_D_ht+0x1e88b, %rsi
cmp %r11, %r11
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
add $26840, %r15
lea addresses_WC_ht+0xbf01, %r15
nop
add %rsi, %rsi
movw $0x6162, (%r15)
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xcf85, %rsi
lea addresses_A_ht+0x38e1, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $83, %rcx
rep movsl
sub $53867, %r13
lea addresses_WC_ht+0x2341, %r11
nop
nop
nop
add $47406, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
nop
nop
nop
nop
inc %r11
lea addresses_A_ht+0x7aa2, %rcx
nop
nop
nop
cmp $27558, %r13
mov (%rcx), %r11
nop
dec %r15
lea addresses_WT_ht+0x15ea, %r13
cmp $59514, %rsi
movl $0x61626364, (%r13)
add $63528, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rdi
push %rsi

// Faulty Load
lea addresses_WT+0xb6e1, %r10
nop
nop
nop
nop
add $6686, %rdi
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rdi
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'46': 5051, '45': 16099, '00': 674, '49': 3, '08': 1, 'ff': 1}
46 45 46 46 46 45 45 00 45 45 46 45 45 45 45 46 45 45 45 46 46 46 45 45 45 45 45 46 46 45 45 45 45 45 46 46 46 45 45 45 45 45 45 46 45 45 45 45 00 45 46 46 45 45 45 00 45 45 46 46 46 45 45 45 45 45 46 46 45 45 45 00 46 45 45 45 45 45 45 45 00 46 46 45 45 45 46 46 45 45 45 00 46 46 45 45 45 45 46 46 46 00 45 46 46 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 46 45 45 00 45 46 46 45 45 45 45 45 00 45 45 45 45 46 45 45 45 45 46 45 46 45 45 45 45 45 45 45 46 46 45 45 45 45 46 45 46 45 00 46 46 46 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 00 45 45 45 45 46 45 45 45 45 45 45 46 46 46 45 45 45 00 46 46 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 00 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 46 45 46 45 45 45 46 45 45 45 45 45 45 45 45 46 46 45 45 45 00 45 45 46 46 45 00 45 45 46 45 45 45 45 45 45 00 45 46 46 45 45 45 00 45 46 46 45 46 45 45 45 46 46 46 45 45 45 45 45 45 46 46 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 46 46 00 45 45 45 45 45 45 45 45 45 45 45 45 46 46 46 45 45 00 46 46 46 45 45 46 46 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 00 45 45 45 46 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 46 46 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 46 46 45 46 45 45 45 45 45 45 45 45 46 46 45 45 45 46 46 46 45 45 45 45 45 46 46 46 45 45 45 45 45 46 46 45 45 45 46 46 46 45 45 45 46 46 46 45 45 45 45 46 45 45 45 45 46 46 46 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 45 46 46 45 45 45 46 00 46 45 45 45 46 46 45 45 45 45 45 45 45 46 45 45 45 45 00 46 46 45 45 45 45 46 45 45 45 45 46 46 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 46 45 45 45 45 46 45 45 45 45 46 46 46 45 45 00 45 45 46 46 45 45 45 45 45 46 46 45 45 45 46 46 45 45 45 45 46 46 46 00 45 45 45 46 46 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 46 46 45 45 45 45 46 46 45 45 45 45 46 46 45 45 45 45 45 46 45 45 45 45 46 46 45 45 45 45 45 46 46 45 45 45 45 45 46 45 45 45 45 00 45 45 45 46 45 45 45 45 45 45 45 46 46 46 45 45 45 45 46 46 46 45 45 45 45 45 45 00 45 45 46 45 45 45 45 45 46 45 45 45 45 45 00 45 45 46 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 46 46 46 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 46 45 45 45 45 45 46 00 45 45 45 45 45 46 46 46 45 45 45 45 45 46 46 46 45 45 45 45 45 46 46 45 45 45 45 46 46 45 45 45 45 45 46 45 45 45 45 45 46 45 45 00 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 46 46 45 45 45 45 45 46 46 45 45 45 45 46 46 46 45 45 45 45 45 45 46 46 46 45 45 45 00 45 46 46 45 45 46 46 45 45 45 45 46 46 46 45 45 45 45 45 45 46 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
