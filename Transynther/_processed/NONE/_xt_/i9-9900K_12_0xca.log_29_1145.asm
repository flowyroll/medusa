.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1b6c, %r8
clflush (%r8)
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%r8), %xmm5
vpextrq $1, %xmm5, %r15
nop
and $19748, %rdx
lea addresses_WT_ht+0x126ec, %rsi
lea addresses_WT_ht+0x144ec, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $19, %rcx
rep movsw
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rdx

// Store
mov $0x3c6cd100000000c2, %r14
nop
nop
nop
nop
cmp $7489, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r14)
dec %r9

// Faulty Load
lea addresses_D+0x15cec, %rdx
nop
nop
nop
add $31734, %r10
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'36': 29}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
