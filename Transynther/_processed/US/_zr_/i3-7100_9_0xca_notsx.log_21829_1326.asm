.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x14ac1, %rdx
nop
and %rbp, %rbp
movw $0x6162, (%rdx)
nop
inc %rbp
lea addresses_WT_ht+0x929f, %rsi
lea addresses_normal_ht+0xabd7, %rdi
nop
nop
nop
nop
nop
xor $14252, %r14
mov $39, %rcx
rep movsq
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x18cf7, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
xor $38000, %rdi
lea addresses_D_ht+0x270f, %rbp
nop
nop
nop
nop
nop
and %r12, %r12
mov (%rbp), %ecx
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x12398, %rbp
nop
nop
nop
nop
nop
inc %rdx
mov (%rbp), %r14w
nop
xor %rdi, %rdi
lea addresses_A_ht+0x11bd7, %rbp
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x18bd7, %rsi
lea addresses_UC_ht+0x63d7, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $106, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $42888, %rsi
lea addresses_D_ht+0x18b57, %r12
clflush (%r12)
add $20894, %rcx
vmovups (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
dec %rcx
lea addresses_WC_ht+0xae07, %rcx
nop
nop
nop
nop
nop
dec %rsi
movb (%rcx), %r13b
and $59443, %rsi
lea addresses_normal_ht+0x1d493, %rsi
lea addresses_D_ht+0xebd7, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $49, %rcx
rep movsb
nop
nop
nop
add $29979, %rcx
lea addresses_UC_ht+0x1397, %rsi
lea addresses_normal_ht+0x133f7, %rdi
nop
nop
nop
nop
and $37737, %r14
mov $84, %rcx
rep movsl
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0xb73, %rsi
lea addresses_normal_ht+0x1ea0f, %rdi
nop
and %rbp, %rbp
mov $58, %rcx
rep movsw
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x15a1b, %rsi
lea addresses_A_ht+0x1c477, %rdi
nop
nop
nop
nop
nop
sub $15652, %r12
mov $108, %rcx
rep movsq
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x6d7, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
and $0xffffffffffffffc0, %r12
movntdq %xmm3, (%r12)
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x14fd7, %rbx
dec %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rbx
sub $6719, %r15

// Load
mov $0x1d592d0000000537, %rdx
nop
nop
nop
nop
nop
add $59493, %rdi
mov (%rdx), %ebx
nop
nop
sub %rbx, %rbx

// Store
mov $0x17660000000f37, %rbp
inc %r15
movw $0x5152, (%rbp)
nop
dec %rbx

// Load
lea addresses_D+0x6633, %rsi
nop
nop
nop
nop
nop
cmp $16473, %rbx
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r15
inc %rdi

// Faulty Load
lea addresses_US+0x1d3d7, %rdx
clflush (%rdx)
nop
nop
nop
sub %rbp, %rbp
mov (%rdx), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
