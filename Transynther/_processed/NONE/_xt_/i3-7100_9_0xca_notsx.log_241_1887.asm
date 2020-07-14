.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x884c, %rsi
lea addresses_D_ht+0x8cdc, %rdi
inc %r11
mov $81, %rcx
rep movsw
nop
cmp $11445, %rdx
lea addresses_A_ht+0x138dc, %r11
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r11), %cx
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x31dc, %rsi
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%rsi), %rdi
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x23bf39000000058a, %rsi
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_normal+0x40dc, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add $53974, %r10
mov (%r9), %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 241}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
