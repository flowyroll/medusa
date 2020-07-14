.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xf1f9, %rbx
cmp $6691, %rdi
mov (%rbx), %r11w
nop
nop
nop
lfence
lea addresses_normal_ht+0x11079, %r11
nop
dec %r9
mov $0x6162636465666768, %r14
movq %r14, (%r11)
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1ef8d, %r14
nop
nop
and $26671, %rdi
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0xc9f9, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
dec %rbp
movb (%rdx), %bl
nop
nop
nop
nop
nop
add $50306, %r9
lea addresses_normal_ht+0x115d9, %rbx
nop
dec %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%rbx)
nop
nop
nop
nop
sub $2545, %rbx
lea addresses_D_ht+0x17621, %rsi
lea addresses_WC_ht+0x2c51, %rdi
clflush (%rdi)
and %r11, %r11
mov $39, %rcx
rep movsl
nop
and %rsi, %rsi
lea addresses_WT_ht+0xb42d, %rsi
lea addresses_D_ht+0x5df9, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r11, %r11
mov $85, %rcx
rep movsl
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x9db9, %r14
xor $40515, %rbx
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
add $59017, %rbp
lea addresses_A_ht+0x97f4, %rsi
lea addresses_normal_ht+0x799, %rdi
nop
nop
nop
nop
nop
add $20740, %r9
mov $74, %rcx
rep movsl
nop
nop
nop
nop
add $7863, %r9
lea addresses_D_ht+0x91f9, %rsi
xor %r11, %r11
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %r9
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x35f9, %r9
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r9), %rbx
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xa5f9, %rsi
lea addresses_WC_ht+0xe9f9, %rdi
nop
add %r9, %r9
mov $63, %rcx
rep movsl
nop
nop
and $28688, %r14
lea addresses_WC_ht+0x81f5, %rdx
nop
nop
add %r11, %r11
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
xor $5192, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rsi

// Load
lea addresses_US+0xbb01, %r11
nop
nop
nop
and %rbx, %rbx
mov (%r11), %r15w
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0x184b9, %rax
nop
nop
and %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rax)
cmp %r11, %r11

// Store
lea addresses_US+0x5c5d, %r15
nop
dec %r14
movb $0x51, (%r15)
nop
nop
xor $11509, %r11

// Store
mov $0xaf9, %r11
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%r11)

// Exception!!!
mov (0), %r14
nop
nop
nop
nop
nop
add $56702, %rbx

// Store
mov $0x5c670d000000060d, %r14
dec %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
nop
and $39704, %r14

// Faulty Load
lea addresses_RW+0x1b1f9, %rsi
nop
nop
nop
nop
nop
add %rax, %rax
vmovaps (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 176, '49': 1, '48': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00
*/
