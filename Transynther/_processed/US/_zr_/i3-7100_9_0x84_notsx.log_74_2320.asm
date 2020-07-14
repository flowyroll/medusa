.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rdx
lea addresses_normal_ht+0x88de, %rdx
nop
nop
nop
nop
nop
sub $16173, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rdx)
xor $6048, %r8
pop %rdx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_UC+0x1a7fc, %r11
nop
sub %rcx, %rcx
movb $0x51, (%r11)
nop
nop
nop
nop
add $9661, %rcx

// Store
lea addresses_D+0x238c, %r13
clflush (%r13)
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_US+0xfafc, %r11
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r11), %ax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 74}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
