.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x182b5, %rdx
nop
nop
nop
nop
nop
sub $18444, %r13
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
add $21938, %r8
lea addresses_D_ht+0x3cb5, %rsi
lea addresses_D_ht+0x18275, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $24, %rcx
rep movsl
nop
sub %r13, %r13
lea addresses_A_ht+0x4d91, %rdx
xor %rcx, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
dec %r13
lea addresses_A_ht+0x1c03b, %rdi
nop
nop
nop
and $7189, %rcx
movw $0x6162, (%rdi)
xor $50574, %rcx
lea addresses_normal_ht+0xda75, %rsi
lea addresses_D_ht+0x3775, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0, %rcx
rep movsq
nop
nop
nop
nop
add $37404, %rdi
lea addresses_WC_ht+0x3cb5, %rsi
lea addresses_WC_ht+0x1c0b5, %rdi
add $33587, %r10
mov $107, %rcx
rep movsw
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x120f1, %rsi
nop
nop
dec %rdi
mov (%rsi), %r10
nop
sub $36745, %r13
lea addresses_normal_ht+0x197b5, %rsi
lea addresses_WT_ht+0x18515, %rdi
nop
xor %r13, %r13
mov $109, %rcx
rep movsl
inc %r10
lea addresses_normal_ht+0x49c1, %r13
nop
nop
cmp %r10, %r10
movb (%r13), %r11b
nop
nop
nop
cmp $49038, %rdi
lea addresses_D_ht+0x14ba1, %r13
nop
inc %r8
mov (%r13), %rcx
nop
cmp $41060, %rdx
lea addresses_D_ht+0x1e0fd, %r10
xor %rsi, %rsi
movl $0x61626364, (%r10)
sub %r8, %r8
lea addresses_D_ht+0x84b5, %rsi
lea addresses_D_ht+0xbcb5, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $92, %rcx
rep movsl
nop
nop
nop
nop
and $65402, %r8
lea addresses_A_ht+0x5831, %r10
nop
nop
nop
nop
nop
sub $2309, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r10)
sub $1160, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rdx

// Store
lea addresses_WC+0x1d4b5, %rdx
nop
nop
dec %r12
movl $0x51525354, (%rdx)
nop
nop
nop
cmp $15768, %r13

// Store
lea addresses_US+0x18b35, %r10
add %r13, %r13
movl $0x51525354, (%r10)
nop
add %r12, %r12

// Store
lea addresses_WT+0x1593e, %rax
nop
nop
add $13001, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_RW+0x7cb5, %rax
nop
nop
sub $17909, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovntdq %ymm3, (%rax)
nop
nop
sub %r13, %r13

// Store
lea addresses_normal+0x197d9, %r10
nop
nop
and $56986, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
nop
add $58975, %rbp

// Store
lea addresses_D+0x8cb5, %rax
clflush (%rax)
nop
nop
sub $23242, %r13
movb $0x51, (%rax)
nop
xor $57376, %r12

// Store
lea addresses_WT+0xcab5, %rdx
nop
sub %r13, %r13
movw $0x5152, (%rdx)
nop
cmp $29419, %rbp

// Faulty Load
lea addresses_A+0x124b5, %rbp
nop
nop
cmp $50322, %rdx
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rdx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 11, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'e5': 1, 'd2': 1, '48': 3035, '44': 4172, '00': 48}
44 44 48 48 44 48 44 44 44 44 44 44 48 48 44 44 44 44 44 48 44 44 44 44 44 44 44 44 48 44 44 44 44 48 44 44 48 44 44 44 44 48 44 48 48 44 44 44 48 48 48 44 44 48 48 48 44 44 48 44 44 44 48 44 44 48 44 44 44 48 48 48 00 44 48 48 48 48 48 48 44 44 48 48 48 48 44 48 44 44 44 44 44 44 48 44 44 48 44 44 48 44 48 44 44 44 44 44 44 44 44 48 48 48 48 44 44 44 44 44 44 44 44 48 44 44 48 44 48 44 44 48 48 48 48 44 48 44 44 48 48 44 48 48 44 44 48 44 48 44 48 44 48 44 44 48 44 48 48 44 48 44 48 44 48 44 44 48 44 44 48 44 44 44 44 48 44 44 44 44 48 44 44 48 48 48 48 44 48 44 48 44 44 44 48 48 44 44 44 48 48 48 48 44 44 48 48 44 44 48 48 44 44 48 48 44 48 44 44 44 48 44 48 44 48 44 44 48 48 44 44 44 44 44 48 48 48 48 48 44 48 44 48 48 44 48 44 44 48 44 48 44 44 44 44 48 48 44 00 48 48 48 44 44 48 48 44 44 48 44 44 48 44 44 48 48 44 44 48 44 44 44 48 44 48 44 44 48 44 48 44 44 48 44 44 44 44 44 44 48 48 44 44 44 44 48 44 44 48 44 44 44 48 44 48 44 44 44 48 48 48 44 44 44 44 44 48 48 44 44 44 48 44 44 44 44 44 48 48 48 44 44 48 44 44 48 44 48 48 44 44 48 48 48 44 44 48 44 44 44 48 48 48 44 44 48 44 48 48 44 48 44 44 48 44 44 44 44 48 44 44 44 48 48 44 44 48 48 44 44 44 44 48 48 48 44 44 00 48 44 44 48 48 48 44 44 44 44 44 44 44 48 44 44 44 44 48 44 44 48 48 48 48 44 48 44 48 48 44 44 44 44 48 48 48 48 48 44 48 44 48 44 48 44 48 48 48 44 48 44 48 44 48 44 44 44 44 44 44 48 44 48 48 48 44 44 44 44 44 44 48 44 48 44 44 44 48 44 48 48 44 44 44 48 44 48 48 48 48 44 44 44 48 44 44 48 48 48 44 44 48 44 44 44 48 48 44 00 44 44 44 44 44 44 44 44 44 44 48 48 48 44 44 44 44 48 48 44 48 48 44 48 48 00 44 44 44 48 48 44 48 44 48 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 44 44 44 48 44 48 48 48 44 48 48 44 48 44 44 48 48 48 48 48 44 48 00 48 44 44 48 48 48 44 44 44 44 48 48 44 48 44 48 48 44 44 48 44 48 44 48 44 48 44 48 44 44 44 48 48 44 48 44 44 44 44 48 44 44 44 44 48 44 44 48 48 48 48 44 48 48 48 44 48 44 48 48 48 44 44 44 44 44 44 48 44 48 44 44 44 44 48 44 44 44 44 48 44 48 44 44 48 48 44 48 48 44 48 44 44 44 44 48 48 44 48 44 48 44 48 48 48 48 44 44 44 44 44 48 44 44 48 44 48 44 48 48 48 44 44 44 44 44 44 00 48 48 48 48 44 44 44 44 48 48 48 48 44 48 48 48 48 44 44 44 44 44 48 48 44 44 48 48 48 44 44 44 44 44 48 44 44 48 44 44 48 44 44 44 48 48 44 48 44 44 00 44 48 48 44 48 48 48 44 48 44 44 48 44 48 48 48 48 44 44 44 44 48 44 44 48 44 44 48 48 44 44 44 44 48 44 44 44 44 44 44 48 44 00 44 48 44 48 48 44 44 48 48 48 48 44 44 44 44 44 48 48 48 44 48 44 44 44 44 44 44 44 44 44 48 44 44 44 44 44 48 44 48 44 44 44 44 44 44 44 44 44 44 48 44 48 48 48 48 48 48 48 48 44 44 48 48 44 48 48 44 44 44 48 48 48 48 44 44 48 48 44 44 44 48 48 44 48 48 44 44 48 44 48 48 44 48 48 44 44 48 48 48 44 44 44 48 44 48 48 48 44 48 48 48 44 48 44 44 48 44 44 48 48 48 44 44 44 44 44 44 48 44 44 44 48 44 44 44 48 48 44 44 44 44 44 48 44 48 44 44 48 48 44 44 44 48 48 48 44 44 48 48 48 44 44 48 44 44 48 48 48 44 44 44 48 44 48 48 44 48 48 44 48 48 48 44 44 44 44 48 44 48 48 48 48 48 48 44 44 44
*/
