.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1dba9, %rsi
lea addresses_D_ht+0x7bf5, %rdi
nop
nop
sub $9264, %rdx
mov $86, %rcx
rep movsw
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x18399, %r15
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r15)
nop
inc %r15
lea addresses_A_ht+0x6e59, %rdi
nop
nop
nop
nop
sub $16810, %r10
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x1a3a9, %rdx
nop
nop
xor %rdi, %rdi
mov (%rdx), %cx
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rbx

// Store
lea addresses_A+0x3099, %r13
clflush (%r13)
nop
inc %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r13)
nop
nop
cmp $13409, %r10

// Store
mov $0x78679b0000000919, %rax
nop
sub $48128, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
add %rax, %rax

// Load
lea addresses_A+0xd0ed, %rbx
nop
nop
nop
nop
nop
sub %rbp, %rbp
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
nop
nop
dec %r10

// Load
lea addresses_A+0x4ae1, %rax
nop
nop
and %r10, %r10
mov (%rax), %rbp
and $39096, %r13

// Faulty Load
lea addresses_D+0xb799, %rbx
nop
nop
nop
nop
nop
inc %r12
mov (%rbx), %r10w
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'36': 21}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
