.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x2323, %r13
nop
nop
add $48722, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0xce05, %rcx
clflush (%rcx)
nop
nop
cmp %r8, %r8
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1b103, %rsi
lea addresses_WT_ht+0x2103, %rdi
nop
nop
nop
nop
nop
xor $16054, %r13
mov $30, %rcx
rep movsb
nop
nop
nop
xor $53807, %rcx
lea addresses_WT_ht+0x897b, %rsi
lea addresses_WT_ht+0x17f43, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $96, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0xd103, %rdx
clflush (%rdx)
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdx), %di
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x18b49, %rsi
lea addresses_D_ht+0x144d2, %rdi
nop
sub $27014, %r14
mov $69, %rcx
rep movsq
nop
nop
nop
nop
and %r13, %r13
lea addresses_D_ht+0x1ad03, %rax
nop
nop
nop
nop
nop
inc %rdi
mov (%rax), %rsi
nop
nop
cmp $27877, %rdi
lea addresses_UC_ht+0xf343, %rdi
clflush (%rdi)
nop
dec %rdx
mov (%rdi), %r13d
inc %r14
lea addresses_normal_ht+0x83a3, %rax
clflush (%rax)
nop
nop
nop
and %rcx, %rcx
mov (%rax), %rsi
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0xee03, %rsi
lea addresses_WT_ht+0x10303, %rdi
clflush (%rdi)
inc %r13
mov $113, %rcx
rep movsl
nop
inc %rcx
lea addresses_A_ht+0x7a83, %rsi
lea addresses_D_ht+0xc103, %rdi
nop
nop
nop
nop
xor $13941, %rdx
mov $118, %rcx
rep movsb
nop
nop
xor %rax, %rax
lea addresses_D_ht+0xd703, %rsi
nop
nop
add %rcx, %rcx
mov (%rsi), %r14d
nop
mfence
lea addresses_WC_ht+0xe10a, %rsi
lea addresses_D_ht+0xa603, %rdi
nop
nop
nop
nop
cmp $38808, %rdx
mov $116, %rcx
rep movsb
nop
nop
nop
add $34779, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi

// Store
mov $0x41faa50000000f83, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%rdi)

// Exception!!!
nop
nop
nop
nop
mov (0), %rcx
add $52179, %rax

// Load
lea addresses_WC+0xe903, %rdi
nop
nop
nop
sub %r9, %r9
vmovaps (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
add $30677, %r11

// Store
lea addresses_D+0x12003, %rdi
nop
sub %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
sub $16403, %rax

// Store
lea addresses_normal+0x12803, %r11
nop
nop
and %r9, %r9
movl $0x51525354, (%r11)
xor %rax, %rax

// Faulty Load
lea addresses_PSE+0xf103, %rax
dec %r9
movb (%rax), %r11b
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'33': 18}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
