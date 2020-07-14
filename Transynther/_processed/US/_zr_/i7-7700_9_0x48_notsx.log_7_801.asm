.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x18786, %rdi
nop
and %r11, %r11
mov (%rdi), %si
mfence
lea addresses_A_ht+0x2086, %r15
inc %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
and $0xffffffffffffffc0, %r15
movaps %xmm1, (%r15)
dec %rsi
lea addresses_WT_ht+0x6d90, %rdi
nop
nop
nop
nop
xor $36364, %r13
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x17646, %r13
nop
nop
xor %r15, %r15
movups (%r13), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x16886, %rsi
lea addresses_UC_ht+0x1c386, %rdi
and %r15, %r15
mov $51, %rcx
rep movsl
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x8c86, %rcx
nop
nop
nop
sub $28035, %rdi
mov (%rcx), %r11w
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rsi

// Faulty Load
lea addresses_US+0x1c86, %r14
nop
nop
nop
nop
dec %rsi
mov (%r14), %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}}
{'00': 7}
00 00 00 00 00 00 00
*/
