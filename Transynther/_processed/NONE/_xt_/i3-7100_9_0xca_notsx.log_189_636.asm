.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8232, %rsi
lea addresses_WC_ht+0x108ad, %rdi
nop
nop
nop
add $63210, %r12
mov $55, %rcx
rep movsw
nop
nop
add %r9, %r9
lea addresses_UC_ht+0x4875, %rsi
lea addresses_A_ht+0xfd75, %rdi
nop
nop
nop
nop
mfence
mov $48, %rcx
rep movsb
nop
nop
nop
add $60328, %rdi
lea addresses_D_ht+0x1d975, %rsi
lea addresses_WT_ht+0x12fc5, %rdi
nop
nop
add %r11, %r11
mov $79, %rcx
rep movsw
nop
nop
inc %rdi
lea addresses_UC_ht+0x11198, %rcx
xor $37498, %r11
mov (%rcx), %r9w
nop
nop
nop
nop
nop
sub $46320, %r12
lea addresses_normal_ht+0x11abd, %rsi
lea addresses_D_ht+0xfbd5, %rdi
nop
cmp $49545, %rbx
mov $78, %rcx
rep movsw
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x165f5, %r12
clflush (%r12)
nop
nop
nop
nop
add $31634, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r12)
nop
inc %r11
lea addresses_WC_ht+0x186f5, %r14
nop
nop
nop
nop
cmp %r12, %r12
mov (%r14), %r11
nop
nop
nop
nop
and $53288, %rcx
lea addresses_D_ht+0xfd75, %rdi
dec %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rdi)
nop
dec %rdi
lea addresses_normal_ht+0x47b, %rsi
lea addresses_A_ht+0xb575, %rdi
nop
nop
and %rbx, %rbx
mov $116, %rcx
rep movsw
nop
sub $46571, %r14
lea addresses_normal_ht+0x14d36, %rsi
nop
nop
nop
xor %rdi, %rdi
movb (%rsi), %cl
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0xa975, %rsi
clflush (%rsi)
nop
and $32073, %rdi
mov (%rsi), %rbx
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Store
mov $0x2bd4ee0000000575, %r15
nop
nop
nop
nop
nop
sub $5778, %r11
movw $0x5152, (%r15)
nop
nop
and $24054, %r10

// Load
mov $0x3ea7950000000365, %rdx
nop
nop
add %rax, %rax
mov (%rdx), %r15d
nop
and $8897, %rsi

// Faulty Load
lea addresses_D+0x1175, %rsi
nop
nop
nop
nop
and $58036, %r15
mov (%rsi), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 189}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
