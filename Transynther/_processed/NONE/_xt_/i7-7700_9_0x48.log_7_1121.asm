.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xcfe0, %rsi
lea addresses_UC_ht+0xd594, %rdi
nop
nop
nop
nop
sub $7798, %r12
mov $111, %rcx
rep movsw
nop
nop
nop
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0xb394, %rsi
lea addresses_normal+0x19f94, %rdi
inc %rdx
mov $33, %rcx
rep movsw
nop
nop
dec %r14

// Load
lea addresses_D+0x3394, %rsi
nop
nop
nop
nop
add $44923, %r14
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_PSE+0xb794, %rax
nop
dec %r14
movl $0x51525354, (%rax)
nop
nop
sub %rdx, %rdx

// Load
lea addresses_D+0x1b64, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %ecx
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_D+0x6864, %rbx
nop
nop
nop
nop
nop
xor $35750, %rax
movl $0x51525354, (%rbx)
nop
xor $43904, %rdx

// Faulty Load
lea addresses_PSE+0xb794, %rax
nop
nop
nop
nop
nop
inc %r14
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'33': 7}
33 33 33 33 33 33 33
*/
