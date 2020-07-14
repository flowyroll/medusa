.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xfd40, %rsi
lea addresses_WC_ht+0x72e4, %rdi
clflush (%rsi)
nop
nop
nop
dec %r15
mov $66, %rcx
rep movsl
nop
nop
dec %r11
lea addresses_WT_ht+0xdb6c, %rsi
lea addresses_UC_ht+0x1d74e, %rdi
nop
nop
xor $22577, %r14
mov $119, %rcx
rep movsb
nop
nop
nop
nop
nop
and $46763, %rcx
lea addresses_WC_ht+0xf4ec, %r15
nop
nop
nop
inc %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1a4ec, %rsi
lea addresses_normal_ht+0xc9dc, %rdi
nop
nop
nop
nop
cmp $49710, %r8
mov $60, %rcx
rep movsq
xor $32339, %r13
lea addresses_WC_ht+0x47ac, %rcx
nop
nop
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%rcx)
nop
xor $9846, %rcx
lea addresses_WT_ht+0x1e99a, %rcx
nop
nop
nop
xor %r15, %r15
movb (%rcx), %r11b
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x141ec, %rsi
lea addresses_D_ht+0x1e2ec, %rdi
nop
nop
nop
cmp %r13, %r13
mov $10, %rcx
rep movsq
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x194ec, %rdi
nop
nop
add $64278, %r13
mov (%rdi), %r11d
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0xc8c, %r11
clflush (%r11)
nop
nop
add %rsi, %rsi
movb (%r11), %r8b
add $48014, %rcx
lea addresses_D_ht+0xba2c, %rcx
nop
nop
nop
nop
sub $32385, %r15
mov (%rcx), %esi
nop
inc %r13
lea addresses_WC_ht+0x1f88, %rsi
lea addresses_normal_ht+0xec, %rdi
clflush (%rdi)
nop
and $12863, %r11
mov $92, %rcx
rep movsq
nop
lfence
lea addresses_WC_ht+0x64ec, %r15
nop
nop
nop
nop
nop
dec %rcx
mov (%r15), %r13w
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rdx

// Store
lea addresses_RW+0x6cac, %r15
clflush (%r15)
nop
nop
nop
and %r12, %r12
movw $0x5152, (%r15)
nop
nop
add %rbx, %rbx

// Store
lea addresses_A+0x866c, %r11
nop
nop
and %rdx, %rdx
movw $0x5152, (%r11)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_US+0x13de0, %r15
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r15)
nop
and $35360, %rdx

// Store
lea addresses_WT+0x1e594, %r15
nop
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
and %r11, %r11

// Store
mov $0x627fc400000000ec, %rbx
nop
nop
nop
nop
and $32731, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovntdq %ymm4, (%rbx)
nop
nop
cmp $40069, %r11

// Store
lea addresses_US+0x34ec, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and $2131, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
add $23157, %r15

// Store
lea addresses_WT+0x16aac, %r10
and $1256, %r11
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
mov $0x14edb400000004ec, %r10
nop
nop
nop
nop
add $3367, %r9
mov (%r10), %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 6361, '00': 6656}
58 00 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 00 00 00 58 58 58 58 58 00 58 00 58 58 00 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 00 00 58 58 00 58 58 58 58 00 58 58 00 00 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 58 58 58 00 58 00 00 58 00 00 00 58 58 00 58 00 58 58 58 00 58 00 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 00 00 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 00 00 58 58 58 58 58 58 00 00 00 58 58 58 58 58 00 58 58 00 00 58 58 58 00 00 00 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 00 58 00 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 00 00 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 58 00 00 58 58 00 00 58 00 58 00 00 00 00 00 58 58 00 00 00 58 58 00 00 58 58 00 58 58 58 58 00 58 58 58 58 00 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 00 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 58 58 58 58 00 00 58 58 00 58 58 58 58 58 00 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 00 58 58 00 00 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 00 58 58 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 58 00 58 58 00 58 00 00 00 58 58 00 00 00 58 58 58 58 00 00 00 58 00 58 58 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 58 00 58 58 00 58 00 58 00 58 00 58 58 00 58 58 00 58 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 58 00 58 58 58 58 58 00 00 00 58 00 00 58 00 58 58 00 00 00 58 58 00 00 00 58 58 00 58 00 58 00 00 00 58 58 58 00 00 00 58 58 00 00 58 00 58 00 58 58 58 58 00 00 58 58 58 58 00 00 00 00 58 00 58 58 00 58 58 00 00 00 00 58 00 00 58 58 00 00 58 00 00 58 58 00 58 58 58 00 58 00 00 58 00 58 58 58 58 58 00 00 00 58 58 00 58 58 00 00 00 00 00 58 00 58 00 58 58 58 00 00 00 58 00 00 00 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 00 58 58 58 00 00 00 58 58 00 00 00 58 58 58 00 00 58 58 58 00 58 00 00 00 58 00 00 00 00 58 00 58 58 58 00 00 58 00 00 00 58 58 58 00 00 58 00 00 00
*/
