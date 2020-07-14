.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x183ef, %rsi
lea addresses_WT_ht+0xec4f, %rdi
nop
and %r13, %r13
mov $14, %rcx
rep movsl
nop
nop
and $3036, %rdi
lea addresses_WC_ht+0x1a8ef, %rsi
lea addresses_A_ht+0x1ebef, %rdi
nop
nop
cmp %r10, %r10
mov $17, %rcx
rep movsw
nop
nop
nop
cmp $48666, %rdi
lea addresses_normal_ht+0x943f, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%rcx), %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xb75b, %rcx
nop
nop
nop
sub $10427, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rcx)
cmp %rcx, %rcx
lea addresses_WT_ht+0x83ef, %rcx
nop
add $13045, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0xb9db, %rsi
lea addresses_A_ht+0x1ee8a, %rdi
nop
nop
add %rbx, %rbx
mov $70, %rcx
rep movsw
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x17aef, %rdi
nop
nop
nop
nop
xor $46011, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
sub $34304, %rsi
lea addresses_D_ht+0x93ef, %r10
nop
nop
nop
sub $22000, %rdx
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_WC_ht+0x107f7, %r14
nop
nop
nop
nop
nop
add %rcx, %rcx
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rbx
dec %rcx
lea addresses_D_ht+0x1d8d4, %rsi
lea addresses_normal_ht+0x1217, %rdi
nop
nop
nop
nop
xor $4237, %r13
mov $38, %rcx
rep movsb
nop
nop
cmp $4000, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x2bd6, %rsi
lea addresses_A+0x1c9bf, %rdi
nop
nop
dec %rax
mov $2, %rcx
rep movsw
nop
nop
nop
nop
add $64833, %rdx

// Load
lea addresses_D+0x1d071, %rsi
nop
nop
nop
nop
nop
inc %rdx
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rcx
nop
and $51834, %r9

// Store
lea addresses_A+0x1e00e, %rax
nop
nop
nop
and $35982, %rsi
movb $0x51, (%rax)
nop
sub $34077, %rdx

// Store
lea addresses_PSE+0x1260f, %rdi
nop
nop
nop
nop
cmp $15540, %r15
movl $0x51525354, (%rdi)
sub $39345, %rax

// Store
mov $0xdf1, %r15
clflush (%r15)
nop
nop
nop
sub $44493, %r9
movb $0x51, (%r15)
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_US+0xfdbb, %rcx
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%rcx)
nop
nop
add %rdi, %rdi

// Load
mov $0x698b5900000002af, %r15
nop
nop
nop
nop
add $6895, %rsi
mov (%r15), %r9d
sub $44481, %r9

// Store
lea addresses_RW+0x143ef, %rdx
nop
add $59865, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_UC+0x1b3ef, %rax
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%rax)
nop
cmp $56617, %r15

// Store
lea addresses_normal+0x59df, %r15
nop
nop
nop
nop
nop
sub $10025, %r9
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_US+0x18bef, %rax
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%rax)
nop
xor %r9, %r9

// Faulty Load
lea addresses_RW+0x143ef, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov (%rdi), %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'58': 5}
58 58 58 58 58
*/
