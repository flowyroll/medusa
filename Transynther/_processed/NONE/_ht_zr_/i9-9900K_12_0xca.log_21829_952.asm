.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdab2, %rcx
clflush (%rcx)
nop
nop
add %rax, %rax
movb $0x61, (%rcx)
dec %rax
lea addresses_D_ht+0x98e0, %r14
nop
cmp %rsi, %rsi
movups (%r14), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
sub $55776, %rdi
lea addresses_normal_ht+0x158b8, %rdi
nop
nop
nop
xor $34359, %rbx
mov (%rdi), %ecx
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1dcc, %rsi
sub %r14, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rsi)
sub %rsi, %rsi
lea addresses_UC_ht+0x18038, %r14
sub $46124, %rsi
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x4578, %rsi
nop
nop
nop
cmp $7984, %rax
movb $0x61, (%rsi)
nop
and %rbx, %rbx
lea addresses_normal_ht+0xd978, %rbx
nop
nop
nop
dec %rcx
mov (%rbx), %r13w
nop
cmp $58941, %rax
lea addresses_D_ht+0x11167, %rcx
nop
nop
nop
nop
and $15754, %r14
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
nop
sub $32025, %rcx
lea addresses_WC_ht+0xe16c, %rax
nop
cmp %rdi, %rdi
movups (%rax), %xmm3
vpextrq $0, %xmm3, %rsi
nop
add %rax, %rax
lea addresses_UC_ht+0x139a8, %rsi
xor %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Faulty Load
lea addresses_WC+0xa978, %rdx
nop
nop
nop
nop
nop
xor %rbx, %rbx
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'00': 11322, '47': 10507}
00 00 47 00 47 00 00 47 00 00 47 00 47 00 47 00 47 47 00 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 47 00 47 00 47 47 47 00 47 47 00 00 47 00 47 00 47 47 00 47 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 47 00 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 00 47 00 00 00 47 00 47 00 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 00 00 47 00 47 00 00 00 47 00 47 00 47 47 47 00 47 47 47 00 47 00 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 00 47 00 47 00 47 00 47 47 00 47 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 00 47 00 00 47 47 47 00 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 00 47 00 47 00 47 00 47 47 00 47 00 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 00 47 00 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 00 47 00 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 47 00 47 00 47 00 47 00 47 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 00 47 00 47 00 00 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 47 00 47 00 00 47 00 47 00 47 00 47 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 47 47 47 00 47 00 00 47 47 00 47 00 47 00 47 00 47 00 47 47 00 00 47 00 47 47 00 00 47 00 47 00 00 47 00 47 00 47 47 00 47 00 00 47 00 47 00 47 00 47 00 47 47 00 47 00 47 00 47 00 47 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 47 00 00 47 00 47 00 47 00 00 00 00
*/
