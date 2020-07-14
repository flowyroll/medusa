.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5fbc, %r9
nop
nop
nop
nop
nop
sub $1848, %rsi
mov (%r9), %r14w
nop
nop
nop
nop
nop
add $6667, %r10
lea addresses_WT_ht+0x79bc, %rsi
lea addresses_WT_ht+0x4ab4, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $62, %rcx
rep movsb
nop
nop
add $41670, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi

// Load
lea addresses_A+0x18d9c, %rcx
nop
nop
nop
nop
xor %r14, %r14
mov (%rcx), %r11d
nop
nop
cmp $39938, %r11

// Faulty Load
lea addresses_A+0x18d9c, %r15
nop
nop
and %rbx, %rbx
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'00': 1}
00
*/
