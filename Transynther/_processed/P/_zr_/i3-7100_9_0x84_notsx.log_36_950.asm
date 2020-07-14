.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x150e4, %rsi
lea addresses_UC_ht+0x128e4, %rdi
clflush (%rdi)
nop
nop
nop
and $61181, %rax
mov $38, %rcx
rep movsb
dec %rdx
lea addresses_A_ht+0x1b809, %rdx
nop
nop
and %r13, %r13
movw $0x6162, (%rdx)
nop
inc %rdi
lea addresses_D_ht+0x52e4, %rcx
nop
inc %r10
movw $0x6162, (%rcx)
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xe14c, %rdi
clflush (%rdi)
nop
cmp %rcx, %rcx
movb (%rdi), %al
nop
nop
nop
sub $19338, %rdx
lea addresses_WT_ht+0xc464, %rsi
lea addresses_UC_ht+0xd4a4, %rdi
nop
nop
nop
nop
nop
cmp $39135, %r8
mov $23, %rcx
rep movsw
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x140e4, %rsi
nop
nop
nop
cmp $50579, %r8
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r10
nop
dec %r13
lea addresses_WT_ht+0x1ae94, %r13
xor %rdx, %rdx
mov (%r13), %r10d
nop
nop
nop
sub $15160, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x110e4, %r9
nop
and $64212, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
nop
and $38651, %r11

// Store
lea addresses_D+0xc7d4, %r12
nop
nop
nop
nop
cmp $31141, %rsi
movl $0x51525354, (%r12)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_A+0x1455c, %rsi
nop
nop
inc %r11
movw $0x5152, (%rsi)
xor %r9, %r9

// Faulty Load
mov $0xe4, %rsi
nop
nop
nop
add $24144, %r12
mov (%rsi), %dx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
