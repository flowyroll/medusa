.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd4c7, %r15
xor %r14, %r14
mov (%r15), %rbx
and $6136, %r10
lea addresses_UC_ht+0x130c7, %rsi
lea addresses_A_ht+0x1a807, %rdi
nop
nop
xor $7120, %r14
mov $90, %rcx
rep movsl
nop
nop
nop
cmp $48212, %r10
lea addresses_D_ht+0x198c7, %rsi
lea addresses_WT_ht+0x4e37, %rdi
nop
nop
nop
nop
nop
and $38306, %rax
mov $3, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x6de6510000000a87, %r9
nop
nop
nop
nop
nop
cmp %rax, %rax
movw $0x5152, (%r9)
xor %rax, %rax

// Store
lea addresses_normal+0x118f7, %r10
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
xor $38177, %rsi

// Store
mov $0x967, %rax
clflush (%rax)
nop
nop
nop
nop
add $54252, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
nop
nop
sub $31012, %rbp

// Faulty Load
lea addresses_A+0xb0c7, %r9
and %rdx, %rdx
mov (%r9), %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'00': 3}
00 00 00
*/
