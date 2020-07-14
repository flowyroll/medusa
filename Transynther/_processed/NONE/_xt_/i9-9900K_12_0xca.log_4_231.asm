.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbx
push %rdx
lea addresses_A_ht+0x16110, %r13
nop
nop
sub $48862, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r13)
nop
nop
cmp $35145, %rdx
pop %rdx
pop %rbx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x1e440, %rbx
nop
add $33852, %rbp
mov (%rbx), %si
nop
nop
nop
nop
and %rbp, %rbp

// REPMOV
lea addresses_A+0x9880, %rsi
lea addresses_WC+0x18880, %rdi
and %r15, %r15
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
add $61985, %rdi

// Faulty Load
lea addresses_PSE+0xb080, %r15
clflush (%r15)
xor $15816, %r13
mov (%r15), %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC', 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'33': 4}
33 33 33 33
*/
