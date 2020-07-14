.global s_prepare_buffers
s_prepare_buffers:
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi
lea addresses_normal_ht+0xed2e, %rbx
sub %rcx, %rcx
movb $0x61, (%rbx)
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1436e, %rsi
mfence
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rdx
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_RW+0x55e2, %rbp
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rbp), %r11w
add $18163, %rcx

// Store
lea addresses_D+0x1346e, %rbx
nop
nop
xor $5839, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_D+0x18d2e, %rbx
nop
nop
nop
nop
dec %rsi
vmovaps (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 179, '47': 301}
47 47 47 00 00 47 47 47 00 00 47 47 47 47 47 00 47 00 47 47 47 00 47 00 47 47 00 00 00 47 47 47 47 00 00 47 00 47 47 00 00 47 47 47 00 47 00 00 47 47 00 47 47 47 47 00 47 47 00 47 00 47 00 47 47 00 47 00 47 00 47 47 00 00 47 00 47 47 47 00 47 47 47 47 47 47 47 00 00 00 47 47 47 00 00 47 47 00 47 00 47 47 47 00 47 47 00 00 00 00 47 00 47 47 47 00 00 47 00 47 00 47 47 47 47 47 00 47 00 47 47 47 47 47 00 00 47 00 47 00 00 47 00 47 47 47 47 47 47 47 00 47 00 47 00 47 47 47 47 00 47 00 47 00 47 47 00 47 00 00 00 47 00 47 47 00 47 47 47 00 47 47 47 47 47 00 00 47 47 47 47 47 00 47 00 47 47 47 47 47 00 00 47 00 47 47 47 47 00 47 47 47 47 00 00 47 00 47 47 47 47 47 47 47 47 47 47 47 00 47 47 47 47 00 00 00 47 00 47 00 00 47 00 47 47 00 47 47 47 00 47 47 47 47 47 00 47 00 47 47 47 47 47 47 47 00 47 47 00 00 47 47 47 00 47 00 47 47 00 47 47 00 00 47 00 47 47 00 00 47 00 00 47 47 47 00 47 00 47 47 47 47 47 47 00 47 00 00 47 47 00 47 00 00 47 47 00 00 00 47 47 00 00 47 00 00 47 00 47 00 47 47 00 00 47 47 47 00 00 47 00 00 47 00 47 47 00 00 47 00 00 00 00 00 00 00 00 47 47 47 00 47 47 47 47 47 47 47 47 00 00 00 47 00 47 47 47 47 00 47 47 47 47 00 00 47 47 47 00 47 47 47 47 00 47 47 47 47 47 47 47 47 00 00 47 47 47 47 47 00 47 47 00 47 00 47 47 47 47 00 00 00 47 47 00 00 47 47 00 47 47 00 47 47 00 00 47 00 47 47 47 00 47 47 00 00 47 47 47 00 47 00 00 47 00 47 47 47 00 47 47 47 47 00 47 00 47 00 47 47 47 00 00 00 47 47 00 47 47 47
*/
