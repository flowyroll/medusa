.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x19fff, %rbp
nop
nop
nop
sub $42299, %rdx
mov (%rbp), %rcx
nop
xor $49542, %r13
lea addresses_A_ht+0x4dcf, %r13
nop
nop
dec %rax
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
and $50630, %rbp
lea addresses_WC_ht+0x176ff, %rsi
lea addresses_WT_ht+0xc87f, %rdi
clflush (%rsi)
nop
nop
nop
and %r13, %r13
mov $103, %rcx
rep movsq
and $26220, %rcx
lea addresses_UC_ht+0x1a23, %rsi
cmp $39551, %rdi
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x57ff, %rsi
lea addresses_UC_ht+0x13bbf, %rdi
nop
cmp %rbx, %rbx
mov $115, %rcx
rep movsl
cmp %rbx, %rbx
lea addresses_WT_ht+0xc99f, %rbx
nop
nop
nop
cmp $62319, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rbx)
nop
sub %rax, %rax
lea addresses_normal_ht+0xbd7f, %rdi
cmp %rbx, %rbx
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
add $50234, %rdi
lea addresses_WT_ht+0x1d9ff, %rax
nop
nop
nop
nop
nop
sub $45170, %r13
movups (%rax), %xmm7
vpextrq $0, %xmm7, %rcx
and $45753, %rdi
lea addresses_WC_ht+0xd411, %rsi
nop
cmp %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x14ff, %rdi
inc %rcx
movb (%rdi), %dl
nop
sub $35722, %rax
lea addresses_D_ht+0x2cf, %rbx
nop
nop
nop
nop
nop
cmp $9195, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rbx)
nop
nop
nop
nop
add $1853, %rbp
lea addresses_normal_ht+0x4831, %rsi
lea addresses_normal_ht+0x22ff, %rdi
nop
xor $56885, %rax
mov $78, %rcx
rep movsl
nop
sub %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_UC+0xfff, %rcx
nop
cmp $19590, %rsi
mov (%rcx), %edi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'ff': 9454, '30': 148, '1c': 1, '80': 1, '01': 2, '47': 624, '48': 696, 'ae': 1, '44': 43, '49': 4, 'f8': 1, '50': 1695, '79': 3084, '53': 1331, '9f': 1, '00': 4742, '45': 1}
ff 00 00 ff 00 ff 53 ff ff 30 00 ff 53 00 50 ff 53 79 79 ff 53 47 53 ff ff 47 ff 53 ff 53 79 50 79 79 00 53 79 ff ff 00 00 ff ff ff 00 ff 00 00 ff ff ff 48 00 00 ff 00 ff 00 79 00 ff ff 53 00 ff 53 00 00 00 48 ff 00 00 ff 00 00 ff 79 53 79 48 44 ff 00 ff 79 ff 79 00 79 ff ff 48 53 79 48 47 ff 79 00 00 ff 48 ff 00 ff 79 50 ff ff ff ff ff 30 ff 53 53 47 79 ff ff ff ff 00 50 53 00 00 ff 00 50 00 ff 79 50 ff 79 00 ff ff 00 ff 00 00 79 ff ff 00 79 ff ff ff 50 ff 79 ff ff ff ff 30 ff 53 00 ff ff 53 79 53 48 50 00 50 ff ff ff 00 ff 00 ff 00 ff 00 ff ff 00 79 50 48 ff ff 00 ff ff 48 ff ff ff 00 00 ff ff 00 ff 50 ff ff 30 ff ff ff 30 00 ff 50 ff ff 50 50 ff ff 50 47 79 79 50 ff ff ff 53 00 ff ff 53 79 00 79 79 ff 00 ff 50 00 ff ff 00 ff ff 79 50 ff ff 79 00 79 79 ff 53 47 ff 00 ff 00 ff 53 ff ff ff ff 50 ff ff 79 ff 00 79 00 79 79 ff 00 47 00 00 79 ff 00 00 00 48 ff 00 79 53 ff ff 50 ff 00 ff 00 47 79 ff ff ff 79 79 50 79 79 ff ff 79 79 ff ff 00 50 79 79 ff 00 53 00 53 ff ff ff ff 79 ff ff ff ff 30 ff ff 00 ff 50 ff 50 79 00 48 ff ff ff 50 50 79 00 79 00 ff 00 ff ff ff 53 ff 00 79 ff ff 53 ff ff 53 ff ff ff ff 50 00 ff 00 ff 48 ff ff ff 50 53 ff 48 50 00 53 ff 50 79 79 ff ff ff ff ff 00 ff ff 50 79 ff ff 00 79 79 79 50 79 79 00 53 00 ff 79 ff ff ff ff 00 47 ff 00 00 ff 47 ff 00 00 ff 53 ff 00 53 53 ff 44 ff 48 ff ff ff ff 53 00 ff ff 79 ff 47 ff ff 30 79 ff 79 ff ff 79 ff ff ff 50 ff ff ff 50 00 53 79 00 50 ff 00 ff 00 50 79 00 00 ff ff 50 79 ff 79 53 79 ff 00 ff 00 ff 53 ff 79 ff 79 ff 53 79 79 79 79 50 ff 00 00 79 ff 00 48 ff 00 00 79 79 79 ff ff ff ff 50 00 00 ff 00 48 ff ff ff ff ff 00 00 48 ff 00 00 ff 50 79 47 79 79 50 00 ff 50 79 00 00 ff 00 ff ff ff ff ff ff 30 ff ff 50 ff 79 ff 79 ff 00 50 ff 79 79 00 ff 48 ff ff ff 00 ff 53 00 79 ff ff 00 ff ff 00 ff 00 79 ff 00 79 ff 00 00 53 79 ff ff 50 00 ff 48 00 ff ff 00 ff ff ff 00 ff 00 ff 00 ff 00 53 47 ff ff ff ff 00 47 48 79 47 ff 00 00 ff 00 ff 47 53 00 ff 53 ff ff 53 00 ff ff ff 48 48 00 00 ff ff 00 00 79 ff 48 00 53 ff ff 00 ff ff ff 00 ff ff ff 00 ff 50 00 ff ff 50 ff 00 ff ff 50 00 48 ff ff 00 ff 53 ff ff 00 79 ff ff 48 00 ff ff 00 ff 79 00 50 00 ff ff 53 79 00 79 50 79 00 ff ff 53 ff 47 ff 53 ff ff 00 79 79 53 50 00 ff ff ff ff ff 50 00 79 79 53 79 ff ff ff ff 00 00 ff ff 79 00 00 00 79 50 00 79 ff ff ff ff 50 00 79 ff 50 ff ff 50 ff 53 ff ff 00 79 00 ff 00 00 00 00 79 ff ff ff 00 ff 79 00 ff 50 79 ff ff ff ff ff ff ff ff ff 50 00 ff 50 00 53 79 ff 00 79 53 79 00 ff ff ff 00 ff ff ff 50 ff ff 50 ff 30 50 ff 50 00 ff ff 30 00 00 ff ff ff 53 ff 50 79 79 ff 50 47 ff ff 48 ff ff ff 50 50 47 ff 79 79 ff 79 48 79 79 79 ff 00 50 ff ff 00 79 ff ff ff 00 00 ff 00 50 79 00 48 00 ff ff 79 ff ff ff 50 ff 00 ff 00 50 79 ff 79 50 ff 53 ff 00 79 50 ff ff ff ff ff 30 ff ff 50 00 79 ff ff ff 50 ff ff 00 ff ff ff 00 ff 53 00 53 ff 50 ff 48 79 ff 00 ff ff 00 ff 00 50 79 00 79 79 79 ff 48 00 ff 47 ff 79 00 50 ff 53 ff 50 ff ff ff ff 00 00 00 ff 53 79 50 00 ff ff 79 79 ff 00 79 79 00 79 50 ff ff ff ff 00 ff 00 00 ff
*/
