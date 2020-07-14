.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1c54f, %rsi
lea addresses_D_ht+0xffc0, %rdi
nop
dec %r12
mov $107, %rcx
rep movsq
nop
mfence
lea addresses_UC_ht+0x12aa0, %r15
nop
nop
nop
nop
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
add $39013, %rcx
lea addresses_UC_ht+0x12a0, %r13
nop
dec %rdx
movl $0x61626364, (%r13)
nop
nop
nop
sub $51781, %rdi
lea addresses_D_ht+0x1a2b0, %r13
nop
nop
dec %r15
mov (%r13), %rsi
add $1561, %rdx
lea addresses_UC_ht+0xb9a0, %rsi
lea addresses_WT_ht+0x3438, %rdi
nop
nop
dec %r10
mov $49, %rcx
rep movsw
add %r12, %r12
lea addresses_UC_ht+0x8ddc, %rsi
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
add $18024, %r12
lea addresses_UC_ht+0x13a20, %rsi
lea addresses_D_ht+0x51dc, %rdi
nop
nop
nop
nop
nop
xor $49833, %rdx
mov $17, %rcx
rep movsl
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x13c74, %rsi
lea addresses_normal_ht+0x62f8, %rdi
nop
nop
nop
nop
cmp $59512, %r13
mov $121, %rcx
rep movsq
nop
nop
nop
nop
sub $49293, %rdi
lea addresses_normal_ht+0xcca0, %rcx
nop
nop
nop
xor %rsi, %rsi
movb (%rcx), %dl
nop
nop
nop
cmp $32606, %rsi
lea addresses_WT_ht+0x2460, %r13
nop
nop
nop
nop
nop
cmp $50046, %rdi
movb (%r13), %r10b
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x6aa0, %rsi
nop
nop
nop
add %r12, %r12
mov (%rsi), %r15w
sub $7022, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx

// Faulty Load
lea addresses_US+0xcaa0, %r10
nop
nop
nop
nop
inc %r11
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'00': 3, '47': 2}
00 47 00 47 00
*/
