.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rsi
lea addresses_D_ht+0x379d, %rax
nop
sub $1051, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
add $34784, %rsi
lea addresses_WC_ht+0xd11d, %r9
nop
xor $6598, %r8
movb (%r9), %r13b
nop
cmp %r13, %r13
lea addresses_D_ht+0xbead, %r9
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r9), %eax
nop
add $19534, %r13
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0xaf1d, %rbx
inc %rdi
movw $0x5152, (%rbx)
nop
and %rbx, %rbx

// Load
mov $0x6b670a000000005d, %r9
nop
nop
nop
nop
nop
sub %rbp, %rbp
movups (%r9), %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
and $47040, %rbp

// Faulty Load
lea addresses_PSE+0x1fb9d, %r9
nop
nop
nop
nop
add %rbx, %rbx
movups (%r9), %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'33': 10}
33 33 33 33 33 33 33 33 33 33
*/
