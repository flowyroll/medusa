.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x46f8, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
sub $28211, %r15
lea addresses_WT_ht+0x1691c, %rsi
lea addresses_UC_ht+0xc718, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $71, %rcx
rep movsb
and %rdx, %rdx
lea addresses_normal_ht+0xe19b, %r9
nop
nop
nop
nop
nop
add $53185, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
and $0xffffffffffffffc0, %r9
movntdq %xmm3, (%r9)
nop
sub $55999, %r12
lea addresses_UC_ht+0x4438, %rsi
lea addresses_D_ht+0x1b988, %rdi
nop
nop
nop
nop
add $41558, %r15
mov $119, %rcx
rep movsb
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x9e38, %rsi
lea addresses_UC_ht+0x4df8, %rdi
nop
nop
nop
sub $3911, %rdx
mov $55, %rcx
rep movsw
nop
nop
and $32166, %rdi
lea addresses_UC_ht+0xe58, %rsi
lea addresses_normal_ht+0x1d4c0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $76, %rcx
rep movsb
sub $38459, %rcx
lea addresses_A_ht+0x5e38, %rcx
and $16816, %r12
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
and %rsi, %rsi
lea addresses_normal_ht+0x1e238, %rsi
lea addresses_UC_ht+0xb638, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %rax, %rax
mov $118, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0xaa38, %r15
nop
nop
nop
nop
nop
cmp $46255, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %r15
movntdq %xmm2, (%r15)
nop
nop
cmp $42693, %rax
lea addresses_D_ht+0x1b638, %rsi
lea addresses_normal_ht+0xa238, %rdi
nop
add %r12, %r12
mov $6, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbp

// Load
lea addresses_RW+0x6128, %rbp
nop
nop
and %r12, %r12
movb (%rbp), %al
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_RW+0x4738, %rax
xor $32495, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rax)
and $55411, %r12

// Store
lea addresses_A+0x12fc8, %rax
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor $29675, %r9

// Store
lea addresses_D+0x19658, %rbp
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
add $56643, %r13

// Store
mov $0x2aa21a00000007a0, %r12
clflush (%r12)
nop
xor %r11, %r11
movl $0x51525354, (%r12)
nop
and $28400, %r13

// Store
lea addresses_normal+0x24f9, %r13
nop
nop
and $51801, %r11
movb $0x51, (%r13)
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
lea addresses_WT+0x1ee38, %r12
nop
and $20640, %r13
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}}
{'39': 1}
39
*/
