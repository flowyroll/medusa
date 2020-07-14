.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x7dbb, %rdx
nop
nop
nop
nop
nop
add %rcx, %rcx
movb $0x61, (%rdx)
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xf43b, %rsi
lea addresses_WT_ht+0x1d77b, %rdi
dec %r13
mov $0, %rcx
rep movsw
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x1c7bb, %rcx
sub %r11, %r11
movb $0x61, (%rcx)
add %rdi, %rdi
lea addresses_normal_ht+0x137bb, %rsi
lea addresses_WC_ht+0x1cdbb, %rdi
nop
nop
nop
xor $6673, %rax
mov $95, %rcx
rep movsq
nop
cmp $53447, %r13
lea addresses_D_ht+0x5bb, %rcx
nop
nop
lfence
movw $0x6162, (%rcx)
nop
add $25636, %rdi
lea addresses_D_ht+0xd5fd, %rsi
lea addresses_WC_ht+0x1d9bb, %rdi
dec %r11
mov $103, %rcx
rep movsq
cmp $43529, %rdi
lea addresses_normal_ht+0x1abb, %rdx
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0x12b7b, %rsi
lea addresses_normal_ht+0x11dbb, %rdi
clflush (%rsi)
xor $47442, %r11
mov $87, %rcx
rep movsw
nop
nop
nop
nop
add $64170, %rdx
lea addresses_D_ht+0xebbb, %rsi
cmp %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
sub $41138, %rdx
lea addresses_WC_ht+0x7ebb, %r13
clflush (%r13)
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
nop
add $36082, %rdx
lea addresses_UC_ht+0x145bb, %rsi
lea addresses_UC_ht+0x171bb, %rdi
nop
dec %rax
mov $79, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x464e, %rsi
lea addresses_D_ht+0x99bb, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $90, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $48496, %rdi
lea addresses_UC_ht+0x403f, %rsi
lea addresses_UC_ht+0xf1cb, %rdi
nop
nop
nop
dec %r13
mov $29, %rcx
rep movsb
nop
nop
xor $10278, %r11
lea addresses_WC_ht+0x11ce2, %rax
nop
nop
nop
inc %r14
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
and $19377, %rdx
lea addresses_UC_ht+0x1d5bb, %rsi
nop
nop
and %rdx, %rdx
mov (%rsi), %rax
nop
nop
cmp $33912, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rdi
push %rdx

// Store
mov $0x6d3d20000000037b, %rdi
xor $19962, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_US+0xc593, %rdi
clflush (%rdi)
nop
nop
sub $43844, %r11
mov (%rdi), %r12

// Exception!!!
nop
nop
nop
nop
mov (0), %rdi
nop
nop
cmp $43980, %rdi

// Store
lea addresses_PSE+0xc823, %r9
nop
nop
nop
nop
nop
sub %r14, %r14
movw $0x5152, (%r9)
nop
xor $44881, %r12

// Faulty Load
lea addresses_normal+0x5dbb, %rdx
nop
nop
nop
nop
sub %r14, %r14
movaps (%rdx), %xmm3
vpextrq $0, %xmm3, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 123}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
