.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c86e, %rbx
nop
nop
sub $27076, %rdi
movw $0x6162, (%rbx)
add $13094, %rbp
lea addresses_normal_ht+0x21fe, %rbx
nop
nop
nop
nop
nop
add %r12, %r12
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x3c9e, %rsi
lea addresses_WT_ht+0x14a9e, %rdi
nop
sub %r13, %r13
mov $75, %rcx
rep movsq
nop
nop
nop
nop
and $14791, %rbp
lea addresses_A_ht+0x2a26, %rsi
lea addresses_UC_ht+0xb69e, %rdi
nop
sub $1574, %r13
mov $72, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x1d89e, %rsi
lea addresses_WT_ht+0x1789e, %rdi
clflush (%rsi)
nop
add %r13, %r13
mov $83, %rcx
rep movsl
xor %r12, %r12
lea addresses_WC_ht+0x10b38, %rsi
lea addresses_WT_ht+0x1aefe, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $83, %rcx
rep movsb
nop
nop
nop
nop
cmp $20183, %r12
lea addresses_A_ht+0x1a89e, %r15
nop
nop
nop
nop
nop
and %r13, %r13
mov (%r15), %rsi
nop
nop
nop
nop
nop
cmp $13709, %rcx
lea addresses_UC_ht+0xc89e, %r15
nop
nop
sub $50798, %rdi
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
cmp $25503, %r12
lea addresses_WT_ht+0x15cce, %rsi
nop
nop
nop
nop
nop
inc %r15
mov (%rsi), %r12
nop
nop
nop
nop
nop
and $51388, %rcx
lea addresses_WT_ht+0xfe9e, %rsi
lea addresses_WT_ht+0x979e, %rdi
nop
nop
nop
nop
nop
mfence
mov $2, %rcx
rep movsl
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0xc010, %r13
add %r15, %r15
mov (%r13), %rbp
and %rdi, %rdi
lea addresses_WT_ht+0x12f1e, %rsi
lea addresses_WT_ht+0x451e, %rdi
dec %r12
mov $32, %rcx
rep movsb
nop
nop
inc %rcx
lea addresses_normal_ht+0x1021a, %rsi
nop
nop
nop
nop
and %rbx, %rbx
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x1592, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
dec %r13
lea addresses_A_ht+0xf43e, %rsi
lea addresses_WT_ht+0x1dcbe, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
and $545, %r15
mov $16, %rcx
rep movsw
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9

// Faulty Load
lea addresses_A+0x289e, %r13
nop
nop
nop
nop
nop
sub %r14, %r14
movaps (%r13), %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'45': 15534, '44': 144, '00': 5643, '49': 505, '47': 3}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 00 49 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 00 00 49 00 45 45 45 45 45 45 45 45 49 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 49 00 00 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 00 44 00 00 45 45 45 45 45 45 45 45 00 44 00 00 00 00 45 45 45 45 45 45 00 00 00 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45 45 45 00 49 00 00 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 00 00 00 00 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 00 44 49 00 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 00 00 49 00 00 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 00 44 00 00 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 49 00 00 00 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45 00 00 00 45 45 45 45 00 00 00 00 00 00 45 45 45 45 45 45 00 00 49 00 00 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 00 44 49 00 00 00 45 45 45 45 45 45 45 45 45 00 44 00 00 45 45 45 45 45 45 45 45 00 00 49 00 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 49 00 00 00 45 45 45 45 45
*/
