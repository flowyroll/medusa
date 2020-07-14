.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1eb65, %rsi
lea addresses_WC_ht+0x137b7, %rdi
nop
nop
nop
nop
inc %rdx
mov $43, %rcx
rep movsb
sub $60381, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x9d7f, %r12
nop
nop
nop
sub $30784, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
nop
and %rax, %rax

// Load
lea addresses_WC+0xbe5, %r13
sub %rbp, %rbp
movb (%r13), %al
nop
nop
nop
nop
nop
xor $10161, %rbp

// Faulty Load
lea addresses_RW+0x1bf65, %r13
nop
nop
nop
dec %rax
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'32': 3}
32 32 32
*/
