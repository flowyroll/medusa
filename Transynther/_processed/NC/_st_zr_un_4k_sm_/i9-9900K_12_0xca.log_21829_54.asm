.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1047a, %r13
nop
nop
nop
add $41447, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%r13)
inc %r10
lea addresses_UC_ht+0xbc3a, %rsi
lea addresses_UC_ht+0xe86b, %rdi
nop
nop
nop
add $53588, %r14
mov $124, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_A_ht+0x7b3a, %rax
nop
nop
nop
nop
add %rsi, %rsi
movups (%rax), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
cmp $17418, %rsi
lea addresses_normal_ht+0x443a, %rsi
lea addresses_normal_ht+0x1803a, %rdi
and $31039, %rdx
mov $24, %rcx
rep movsq
nop
and $36125, %r14
lea addresses_A_ht+0xba3a, %r10
inc %r14
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
and $60538, %rdi
lea addresses_UC_ht+0x983a, %r13
nop
nop
cmp %rsi, %rsi
movups (%r13), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
nop
cmp $34614, %rsi
lea addresses_UC_ht+0xe8fa, %rdx
nop
nop
nop
and %r13, %r13
mov (%rdx), %rax
nop
nop
inc %rdx
lea addresses_WC_ht+0x833a, %r14
nop
and %rdi, %rdi
mov (%r14), %eax
nop
sub $44719, %rdx
lea addresses_WT_ht+0x1063a, %rsi
lea addresses_normal_ht+0x1edd6, %rdi
nop
nop
add %rax, %rax
mov $123, %rcx
rep movsl
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x1ddae, %r14
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r14)
nop
nop
nop
nop
xor $58687, %r10
lea addresses_A_ht+0x984a, %rsi
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
xor $58, %r14
lea addresses_A_ht+0x6d3a, %rsi
nop
nop
nop
nop
inc %rdi
movb (%rsi), %dl
nop
nop
nop
nop
nop
cmp $35565, %rax
lea addresses_WT_ht+0x15c3a, %rdi
nop
nop
nop
add %rdx, %rdx
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
and $10779, %rcx
lea addresses_A_ht+0x1c3a, %r13
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r13)
nop
xor $43754, %rax
lea addresses_WC_ht+0x10a4c, %r14
clflush (%r14)
add $37194, %r13
movw $0x6162, (%r14)
nop
nop
nop
nop
sub $41583, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x1e33a, %rbp
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_RW+0x1fe3a, %rcx
nop
nop
and $43320, %r15
movw $0x5152, (%rcx)
nop
nop
nop
dec %r13

// Store
mov $0x5c9ca7000000043a, %rbx
and $55424, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0xa43a, %r9
nop
xor %rdx, %rdx
movb $0x51, (%r9)
inc %r13

// Faulty Load
mov $0x5c9ca7000000043a, %r9
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r9), %bx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'fe': 1, '1e': 1, '58': 1179, '51': 20561, '38': 1, '00': 85, 'f0': 1}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 58 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 58 51 58 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 58 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 58 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 58 51 58 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 58 51 51 51 51 51 51 51 51 51
*/
