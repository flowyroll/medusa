.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xca7, %rsi
lea addresses_D_ht+0x1df27, %rdi
nop
nop
nop
add $8857, %r11
mov $47, %rcx
rep movsq
add %rcx, %rcx
lea addresses_normal_ht+0x11953, %rsi
lea addresses_WT_ht+0xf51d, %rdi
nop
inc %r13
mov $114, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $16328, %r13
lea addresses_normal_ht+0xfb27, %rax
sub %r9, %r9
movb (%rax), %cl
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x3167, %rsi
cmp %rdi, %rdi
movb (%rsi), %al
nop
and %r13, %r13
lea addresses_A_ht+0xe28e, %rax
nop
nop
cmp $18762, %r9
mov (%rax), %si
nop
nop
sub %r9, %r9
lea addresses_D_ht+0xff27, %rsi
lea addresses_WT_ht+0x2b27, %rdi
clflush (%rsi)
nop
dec %r8
mov $118, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_D_ht+0x10447, %rsi
inc %r9
movw $0x6162, (%rsi)
nop
nop
nop
xor $13820, %r11
lea addresses_UC_ht+0x17327, %r13
clflush (%r13)
and %r8, %r8
movl $0x61626364, (%r13)
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x1c067, %rsi
lea addresses_WT_ht+0xe327, %rdi
clflush (%rdi)
nop
xor $39559, %rax
mov $80, %rcx
rep movsq
sub $27595, %r8
lea addresses_WC_ht+0x8587, %r11
nop
nop
add $18062, %rdi
movw $0x6162, (%r11)
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x13627, %rsi
lea addresses_normal_ht+0x14fa7, %rdi
sub $59499, %r8
mov $33, %rcx
rep movsb
nop
xor $55010, %r9
lea addresses_UC_ht+0x1ab27, %r9
nop
nop
nop
nop
inc %rsi
movl $0x61626364, (%r9)
nop
nop
nop
nop
add $56221, %rax
lea addresses_WT_ht+0x1c3a8, %rsi
lea addresses_A_ht+0x9b47, %rdi
nop
nop
nop
nop
nop
cmp $24329, %rax
mov $65, %rcx
rep movsq
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x7127, %r8
nop
nop
nop
sub $63299, %r9
movb $0x61, (%r8)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x12d27, %rsi
lea addresses_A_ht+0x928f, %rdi
nop
nop
nop
nop
cmp $23799, %r13
mov $38, %rcx
rep movsq
nop
nop
nop
add $2994, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rdi
push %rsi

// Load
lea addresses_US+0x1316f, %r8
nop
nop
nop
nop
nop
xor %rbp, %rbp
movups (%r8), %xmm5
vpextrq $1, %xmm5, %r13
nop
add $50772, %rbp

// Faulty Load
mov $0xea1200000000327, %rsi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%rsi), %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
