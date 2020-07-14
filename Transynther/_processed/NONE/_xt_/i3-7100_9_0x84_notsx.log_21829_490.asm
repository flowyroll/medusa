.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xa6e4, %rsi
lea addresses_A_ht+0xb2f7, %rdi
clflush (%rdi)
nop
nop
nop
and $1390, %r14
mov $5, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x17fc3, %rsi
lea addresses_normal_ht+0x1b8bb, %rdi
nop
nop
nop
lfence
mov $96, %rcx
rep movsb
nop
nop
and $58172, %rbp
lea addresses_WC_ht+0xbbbb, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
xor $38870, %rcx
lea addresses_WT_ht+0xc21b, %rcx
nop
nop
nop
and $40071, %r14
mov (%rcx), %dx
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0xc839, %rsi
lea addresses_WT_ht+0x1c3bb, %rdi
clflush (%rsi)
nop
nop
nop
inc %rdx
mov $53, %rcx
rep movsb
and $36166, %rbp
lea addresses_A_ht+0x32fb, %rbp
clflush (%rbp)
nop
xor %rdx, %rdx
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
cmp $37524, %rbp
lea addresses_UC_ht+0x984b, %r14
nop
nop
nop
xor $11714, %r9
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
and $29287, %rdi
lea addresses_A_ht+0x11f08, %r9
inc %r14
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x2ebb, %r9
nop
and $26255, %rsi
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
sub $11969, %r9
lea addresses_UC_ht+0x141bb, %rsi
lea addresses_normal_ht+0xfb03, %rdi
nop
nop
and $14106, %r13
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $51689, %rcx
lea addresses_A_ht+0x6627, %rdx
nop
nop
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
sub $35748, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbx
push %rdi

// Faulty Load
lea addresses_normal+0x69bb, %r11
nop
and %r13, %r13
movb (%r11), %bl
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
