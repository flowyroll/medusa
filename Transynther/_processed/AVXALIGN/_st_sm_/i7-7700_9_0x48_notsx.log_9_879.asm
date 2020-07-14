.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5e71, %r11
nop
nop
nop
and %rdx, %rdx
movb (%r11), %r14b
nop
nop
nop
nop
nop
xor $55386, %r11
lea addresses_A_ht+0x2339, %r10
nop
dec %rbx
movl $0x61626364, (%r10)
xor %r14, %r14
lea addresses_D_ht+0xaab9, %rsi
lea addresses_normal_ht+0x9d7f, %rdi
nop
xor %r10, %r10
mov $32, %rcx
rep movsb
nop
nop
inc %rbx
lea addresses_UC_ht+0x14871, %rdx
nop
nop
cmp $39436, %rbx
movb $0x61, (%rdx)
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xcdb1, %rsi
lea addresses_WT_ht+0x19a41, %rdi
nop
nop
dec %rdx
mov $67, %rcx
rep movsb
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x19379, %rsi
lea addresses_normal_ht+0x19fb1, %rdi
nop
nop
cmp %rdx, %rdx
mov $42, %rcx
rep movsw
nop
nop
dec %rsi
lea addresses_D_ht+0x15e91, %r11
nop
and %r10, %r10
mov (%r11), %rsi
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x10471, %rbx
nop
inc %r14
mov (%rbx), %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x168a4, %rsi
lea addresses_WC_ht+0x15a89, %rdi
nop
nop
nop
nop
inc %rbp
mov $63, %rcx
rep movsl
and $49720, %rbx
lea addresses_normal_ht+0xa9b1, %rdx
add %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rbx

// Load
lea addresses_WC+0xeea1, %r10
clflush (%r10)
nop
nop
nop
nop
add $45374, %r9
vmovntdqa (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
xor $50117, %r15

// Store
lea addresses_PSE+0x13ef1, %rbx
nop
nop
nop
nop
nop
add $6999, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movaps %xmm7, (%rbx)
nop
and %r12, %r12

// Store
lea addresses_RW+0x61b1, %r15
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r15)
nop
dec %r12

// Faulty Load
lea addresses_RW+0x61b1, %r12
clflush (%r12)
nop
nop
xor %r10, %r10
mov (%r12), %r15d
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'58': 9}
58 58 58 58 58 58 58 58 58
*/
