.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x5811, %r15
nop
nop
nop
nop
nop
sub %r9, %r9
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x1d111, %rbp
nop
xor $45717, %r13
movw $0x6162, (%rbp)
nop
add $32997, %r15
lea addresses_UC_ht+0x5511, %rsi
lea addresses_WT_ht+0x3111, %rdi
nop
and $60621, %r9
mov $4, %rcx
rep movsw
and $50122, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
mov $0xab1, %rax
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
nop
xor $28573, %r13

// Store
lea addresses_D+0x5d61, %rbp
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movaps %xmm7, (%rbp)
nop
nop
add $19635, %r13

// Store
lea addresses_normal+0x17d17, %r13
nop
nop
and %rax, %rax
movb $0x51, (%r13)
nop
nop
and $51704, %r13

// Store
lea addresses_A+0x5f11, %rdx
nop
nop
add %r10, %r10
movb $0x51, (%rdx)
nop
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_RW+0xcc51, %rsi
nop
and $48166, %rbp
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
add %rsi, %rsi

// Faulty Load
lea addresses_US+0x1f511, %rbp
nop
nop
add %rax, %rax
mov (%rbp), %esi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'00': 94}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
