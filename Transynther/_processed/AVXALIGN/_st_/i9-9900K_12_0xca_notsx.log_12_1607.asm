.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x154a3, %r10
nop
nop
nop
nop
and %r15, %r15
movb (%r10), %r8b
nop
nop
nop
nop
dec %r13
lea addresses_D_ht+0x1d3a3, %rsi
lea addresses_A_ht+0x1aa63, %rdi
clflush (%rsi)
nop
nop
nop
cmp $13341, %rbx
mov $5, %rcx
rep movsl
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x1c723, %r15
nop
nop
nop
nop
sub $27714, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
and $55476, %rcx
lea addresses_normal_ht+0x19ae3, %r15
nop
nop
cmp %rbx, %rbx
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm7
vpextrq $1, %xmm7, %r8
nop
nop
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbp

// Load
lea addresses_PSE+0xa8a3, %rax
nop
nop
nop
and %r9, %r9
vmovaps (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
inc %rbp

// Faulty Load
lea addresses_D+0x27a3, %r11
xor $55259, %r10
mov (%r11), %r12d
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'36': 12}
36 36 36 36 36 36 36 36 36 36 36 36
*/
