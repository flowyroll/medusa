.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1502f, %rsi
lea addresses_normal_ht+0x9ebb, %rdi
clflush (%rdi)
xor $60470, %rbx
mov $38, %rcx
rep movsl
nop
nop
add $54037, %rbp
lea addresses_normal_ht+0xb0ef, %rsi
lea addresses_A_ht+0x1e2f, %rdi
clflush (%rdi)
nop
add %r12, %r12
mov $104, %rcx
rep movsq
xor $16302, %rbp
lea addresses_D_ht+0xca2f, %rsi
lea addresses_WC_ht+0xfc2f, %rdi
clflush (%rsi)
nop
nop
inc %r8
mov $122, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x6e2f, %rsi
lea addresses_A_ht+0x1be6f, %rdi
nop
nop
nop
add $42939, %r13
mov $100, %rcx
rep movsl
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x18af, %rsi
nop
nop
nop
nop
nop
cmp %r12, %r12
movb $0x61, (%rsi)
nop
nop
and $191, %rbx
lea addresses_normal_ht+0x1992f, %rcx
nop
nop
nop
and $36841, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1ad1f, %r8
nop
nop
nop
cmp %rdi, %rdi
mov (%r8), %bp
nop
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x1a67f, %rsi
lea addresses_D_ht+0x1166f, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1182f, %rbp
nop
nop
sub $56442, %rcx
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
add $41676, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Load
lea addresses_normal+0x1305f, %r15
cmp $56914, %r12
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x1b02f, %r15
xor $18036, %r8
movb $0x51, (%r15)
nop
nop
nop
nop
and $59782, %r12

// Store
lea addresses_D+0x214f, %rdx
nop
nop
mfence
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
nop
and %rbp, %rbp

// Store
lea addresses_PSE+0xa5df, %r10
nop
nop
nop
nop
nop
inc %rax
movb $0x51, (%r10)
xor $52262, %r10

// Store
lea addresses_US+0xa437, %r8
nop
nop
add $15701, %r15
movb $0x51, (%r8)
nop
nop
nop
nop
xor $44199, %r8

// Faulty Load
mov $0x144b3e000000082f, %r8
xor $8509, %r12
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'44': 1}
44
*/
