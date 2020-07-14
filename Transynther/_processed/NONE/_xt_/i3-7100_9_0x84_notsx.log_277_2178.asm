.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x109b, %rsi
lea addresses_UC_ht+0x10b9b, %rdi
nop
inc %r8
mov $82, %rcx
rep movsw
nop
dec %rcx
lea addresses_WC_ht+0xf71b, %rsi
lea addresses_WC_ht+0xd39b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r11
mov $57, %rcx
rep movsq
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0xce33, %rsi
lea addresses_WT_ht+0x1589b, %rdi
nop
nop
nop
inc %rbp
mov $73, %rcx
rep movsw
nop
nop
xor $47720, %rdi
lea addresses_WC_ht+0x8d9b, %r8
nop
nop
nop
nop
sub %r13, %r13
movb (%r8), %r11b
nop
and %r13, %r13
lea addresses_WT_ht+0x1766, %rdi
dec %r13
mov (%rdi), %rbp
nop
nop
nop
nop
xor $36024, %r11
lea addresses_A_ht+0xbedb, %rcx
nop
sub %r11, %r11
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
add %rsi, %rsi
lea addresses_UC_ht+0x4d9b, %r8
and %rcx, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1d0bb, %rsi
lea addresses_normal_ht+0xc61b, %rdi
nop
nop
nop
dec %rbp
mov $0, %rcx
rep movsw
nop
nop
nop
cmp $33097, %r13
lea addresses_A_ht+0xf9b, %rcx
nop
nop
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%rcx)
nop
cmp $10375, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Store
mov $0xbd1f000000003db, %r13
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
cmp $25484, %rax

// Store
mov $0x7e295c0000000387, %rbx
nop
nop
nop
nop
nop
cmp $3113, %r15
movb $0x51, (%rbx)
nop
nop
nop
and $41328, %rbx

// Faulty Load
lea addresses_normal+0xe39b, %rsi
clflush (%rsi)
nop
xor $55163, %r8
mov (%rsi), %ebx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'34': 277}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
