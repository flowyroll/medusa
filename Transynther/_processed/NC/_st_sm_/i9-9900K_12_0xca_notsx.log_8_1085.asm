.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1881, %r14
nop
nop
add $54401, %r13
movw $0x6162, (%r14)
nop
xor $56653, %rbx
lea addresses_D_ht+0x8981, %rsi
lea addresses_WC_ht+0x5c2f, %rdi
nop
nop
nop
nop
sub $600, %rax
mov $81, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x12769, %rdx
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rdx)
nop
nop
cmp $60974, %rcx
lea addresses_D_ht+0xe4c1, %rsi
lea addresses_UC_ht+0x7d81, %rdi
clflush (%rdi)
nop
nop
sub $64464, %r14
mov $102, %rcx
rep movsw
nop
xor $39864, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdx
push %rsi

// Store
mov $0x2680f00000000c81, %rdx
dec %rcx
movw $0x5152, (%rdx)
nop
nop
sub $18971, %r8

// Store
lea addresses_WC+0x2481, %r13
nop
nop
add %rdx, %rdx
movb $0x51, (%r13)
nop
nop
nop
nop
nop
sub %r12, %r12

// Load
mov $0x3e5, %r12
nop
nop
nop
nop
xor $4870, %r14
mov (%r12), %cx
nop
nop
add %rdx, %rdx

// Store
lea addresses_RW+0x5c81, %rsi
dec %r14
movl $0x51525354, (%rsi)
nop
nop
sub %rdx, %rdx

// Load
mov $0x2680f00000000c81, %r8
nop
dec %rdx
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
nop
nop
cmp $10864, %r13

// Store
lea addresses_PSE+0x1fe41, %r13
nop
nop
nop
nop
nop
and %r8, %r8
movb $0x51, (%r13)
nop
nop
xor $58074, %rdx

// Faulty Load
mov $0x2680f00000000c81, %r13
nop
nop
nop
nop
nop
dec %rsi
mov (%r13), %r8w
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'54': 8}
54 54 54 54 54 54 54 54
*/
