.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1d645, %rax
nop
nop
nop
nop
add $54702, %r13
movb (%rax), %cl
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0x11845, %rsi
lea addresses_WC_ht+0x4a45, %rdi
clflush (%rsi)
nop
nop
nop
add %rbp, %rbp
mov $50, %rcx
rep movsw
nop
nop
nop
add $36234, %rcx
lea addresses_A_ht+0x161ad, %rsi
lea addresses_UC_ht+0x10a45, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $7, %rcx
rep movsq
nop
dec %rax
lea addresses_WC_ht+0x130ff, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %rdi, %rdi
movb (%r13), %r14b
add $13486, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x6a45, %r11
nop
sub $14632, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
and $52262, %rdx

// Faulty Load
lea addresses_WT+0x6a45, %rcx
nop
nop
sub %rbx, %rbx
vmovaps (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 33}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
