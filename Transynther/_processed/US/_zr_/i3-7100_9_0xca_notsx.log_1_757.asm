.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rbx
lea addresses_WT_ht+0x1600b, %rbx
nop
nop
nop
nop
nop
sub $55407, %r15
movb $0x61, (%rbx)
nop
nop
xor $9058, %rbx
lea addresses_D_ht+0x198ed, %r15
clflush (%r15)
nop
nop
nop
dec %r14
mov (%r15), %ebp
nop
and $16500, %r12
lea addresses_WC_ht+0x98ed, %r8
nop
add $65387, %rbp
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r12
nop
mfence
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1ada9, %r9
nop
add %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r9)
inc %r15

// REPMOV
lea addresses_UC+0x1f22d, %rsi
mov $0xeef, %rdi
nop
nop
nop
nop
mfence
mov $54, %rcx
rep movsb
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_US+0xf4ed, %rdx
nop
nop
dec %r8
mov (%rdx), %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 0, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
