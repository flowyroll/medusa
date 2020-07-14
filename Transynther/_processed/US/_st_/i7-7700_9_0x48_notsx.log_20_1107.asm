.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1b42b, %r8
nop
nop
nop
add $59037, %rbp
movw $0x6162, (%r8)
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0xdd2b, %r11
nop
nop
nop
sub $9702, %rdi
mov (%r11), %r15w
nop
add %rbx, %rbx
lea addresses_normal_ht+0x407, %rbx
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rbx), %r11d
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x2aeb, %rsi
lea addresses_D_ht+0x1318b, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $76, %rcx
rep movsw
lfence
lea addresses_D_ht+0x4b2b, %r13
nop
nop
nop
nop
and $63401, %rbx
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rcx
push %rdi
push %rdx

// Store
mov $0x63fe7e0000000d2b, %rdi
clflush (%rdi)
add %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rdi)
nop
dec %r14

// Store
lea addresses_WT+0x1452b, %rdi
nop
nop
nop
nop
sub $50623, %rdx
movw $0x5152, (%rdi)
nop
nop
nop
and %r14, %r14

// Faulty Load
lea addresses_US+0x1d52b, %r14
clflush (%r14)
nop
nop
nop
and %r12, %r12
mov (%r14), %dx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 9}}
{'52': 20}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
