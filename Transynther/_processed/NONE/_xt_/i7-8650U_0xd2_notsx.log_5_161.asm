.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x13af4, %rsi
lea addresses_WC_ht+0x13eec, %rdi
nop
nop
nop
nop
nop
cmp $43883, %rax
mov $38, %rcx
rep movsb
sub $62342, %rbp
lea addresses_normal_ht+0x176f4, %rcx
nop
nop
add $29655, %r10
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
dec %r10
lea addresses_normal_ht+0x15884, %rsi
lea addresses_WC_ht+0x15ef4, %rdi
nop
nop
nop
nop
nop
sub $3331, %r14
mov $6, %rcx
rep movsb
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x1db, %rdi
nop
and %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and $48722, %rsi
lea addresses_UC_ht+0x19ebe, %rbp
nop
xor %rdi, %rdi
mov (%rbp), %r10w
nop
xor %rax, %rax
lea addresses_A_ht+0x1aa94, %rsi
lea addresses_A_ht+0x189cb, %rdi
nop
nop
nop
and $32666, %r10
mov $2, %rcx
rep movsl
sub %r10, %r10
lea addresses_D_ht+0x30a4, %r14
nop
nop
and $50118, %rbp
movb $0x61, (%r14)
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1e96b, %rbp
nop
nop
nop
nop
nop
xor $55772, %rsi
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
and $60029, %rax
lea addresses_D_ht+0x8d74, %rsi
lea addresses_normal_ht+0x1d534, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $15, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $34282, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_UC+0x26f4, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovaps %ymm0, (%rdi)
nop
and %rdi, %rdi

// Store
lea addresses_WC+0xe024, %r9
cmp %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_PSE+0x18f34, %rdx
cmp $54348, %r9
movw $0x5152, (%rdx)
nop
dec %rdi

// Faulty Load
lea addresses_PSE+0x1fef4, %r9
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov (%r9), %r12d
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'33': 5}
33 33 33 33 33
*/
