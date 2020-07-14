.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x4c89, %rsi
lea addresses_WC_ht+0xe1b1, %rdi
nop
dec %r13
mov $73, %rcx
rep movsl
nop
sub $3616, %rsi
lea addresses_WC_ht+0x8ab1, %rsi
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
nop
sub $42540, %rcx
lea addresses_WT_ht+0xaf35, %rcx
nop
inc %r13
mov (%rcx), %esi
sub %rsi, %rsi
lea addresses_WT_ht+0x1e6cd, %rax
nop
nop
nop
nop
dec %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0xa1b1, %rsi
clflush (%rsi)
nop
nop
xor $31772, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
add $38470, %r9
lea addresses_WT_ht+0x9db1, %r13
nop
nop
nop
nop
nop
dec %rcx
mov (%r13), %r14
nop
and %rax, %rax
lea addresses_UC_ht+0x181b1, %rsi
lea addresses_WT_ht+0x19606, %rdi
clflush (%rsi)
nop
nop
nop
and %rdx, %rdx
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x13f96, %rdx
nop
nop
xor $38846, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x101b1, %rcx
nop
nop
nop
nop
cmp %rdx, %rdx
movb $0x61, (%rcx)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0x1ff9, %rdx
sub %rcx, %rcx
movl $0x61626364, (%rdx)
nop
xor $60959, %r9
lea addresses_WC_ht+0x9b1, %r13
cmp $58152, %rdi
mov (%r13), %rsi
nop
dec %rsi
lea addresses_D_ht+0xbd1, %rsi
lea addresses_UC_ht+0x157b1, %rdi
dec %r14
mov $96, %rcx
rep movsq
nop
nop
inc %rsi
lea addresses_A_ht+0x191b1, %rax
clflush (%rax)
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%rax)
nop
cmp $54697, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rcx

// Faulty Load
mov $0x1b1, %r11
nop
nop
xor %rax, %rax
mov (%r11), %r9d
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rcx
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 362}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
