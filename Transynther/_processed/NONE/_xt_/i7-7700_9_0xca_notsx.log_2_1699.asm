.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19e64, %rsi
lea addresses_D_ht+0xc024, %rdi
nop
nop
nop
nop
dec %r14
mov $9, %rcx
rep movsw
nop
nop
nop
nop
cmp $59982, %r15
lea addresses_D_ht+0x16c06, %rdi
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x70e4, %rdi
nop
nop
xor $33022, %r9
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x12064, %r8
nop
nop
nop
add $58503, %rcx
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0x37a2, %r14
nop
nop
and $47781, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_D+0x16160, %rdx
nop
nop
nop
nop
nop
and %r11, %r11
mov (%rdx), %ecx
nop
nop
nop
nop
add %rdx, %rdx

// Store
mov $0x6c218d0000000e64, %rdx
nop
inc %r10
movb $0x51, (%rdx)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_normal+0xe97a, %r11
xor %rbx, %rbx
movl $0x51525354, (%r11)
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_UC+0x1bd78, %r14
nop
nop
cmp $23926, %rcx
movw $0x5152, (%r14)
nop
nop
nop
nop
and $21571, %r11

// Store
lea addresses_WC+0x1524, %r10
nop
nop
sub $23981, %rdx
movw $0x5152, (%r10)
nop
nop
nop
nop
add %r11, %r11

// Store
mov $0x2126d90000000b54, %r10
nop
and %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r10)
cmp $12638, %rcx

// Store
lea addresses_WC+0x1dab4, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $56511, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movntdq %xmm5, (%r10)
nop
nop
nop
xor $47814, %rdx

// Store
lea addresses_A+0x1c864, %rdx
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rdx)
cmp %rdi, %rdi

// Faulty Load
lea addresses_WT+0x12464, %r14
nop
nop
nop
nop
dec %rbx
mov (%r14), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'39': 2}
39 39
*/
