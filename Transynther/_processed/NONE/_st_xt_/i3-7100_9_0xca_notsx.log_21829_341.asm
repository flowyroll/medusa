.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x7836, %r14
nop
nop
nop
nop
nop
and $416, %rbp
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x5aea, %rsi
lea addresses_WC_ht+0xb0de, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %rax, %rax
mov $57, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $30109, %rsi
lea addresses_D_ht+0xdc36, %rsi
lea addresses_WC_ht+0x11336, %rdi
nop
nop
cmp %rax, %rax
mov $85, %rcx
rep movsl
nop
nop
nop
sub $38958, %rax
lea addresses_D_ht+0x4436, %rsi
lea addresses_WC_ht+0x5c36, %rdi
nop
nop
nop
nop
dec %rax
mov $105, %rcx
rep movsw
nop
nop
nop
nop
cmp $25846, %rax
lea addresses_UC_ht+0x16c36, %r9
nop
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%r9)
sub $23676, %rcx
lea addresses_A_ht+0x1a23a, %rbp
nop
nop
nop
and $30502, %rdi
movl $0x61626364, (%rbp)
nop
add %rbp, %rbp
lea addresses_A_ht+0x13836, %rdi
cmp $26135, %rsi
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
xor $12927, %rdi
lea addresses_normal_ht+0x8436, %rsi
lea addresses_D_ht+0xb4b6, %rdi
nop
nop
xor $34588, %r14
mov $100, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_A_ht+0x10036, %r14
nop
dec %rdi
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0xab36, %rax
nop
cmp $30047, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_A+0xf036, %rax
nop
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%rax)
nop
nop
nop
sub $58814, %rbp

// Store
lea addresses_UC+0x1d436, %r8
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
and $15593, %r15

// Store
lea addresses_A+0x16976, %r15
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%r15)
nop
nop
and %r14, %r14

// Store
lea addresses_D+0xcc36, %r14
nop
cmp $40996, %rdx
movb $0x51, (%r14)
nop
sub $60559, %rdx

// Faulty Load
lea addresses_A+0x12c36, %r8
nop
nop
nop
nop
nop
and %rdx, %rdx
mov (%r8), %eax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'51': 1, '35': 21828}
35 51 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
