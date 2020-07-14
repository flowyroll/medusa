.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xecfc, %rsi
nop
nop
nop
nop
cmp %r8, %r8
mov (%rsi), %r13d
cmp %r13, %r13
lea addresses_UC_ht+0x8dcc, %rsi
lea addresses_WC_ht+0x1525c, %rdi
xor %r10, %r10
mov $6, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x12bcc, %rsi
lea addresses_D_ht+0x1706c, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $101, %rcx
rep movsb
nop
nop
and $62120, %rbp
lea addresses_UC_ht+0x142a8, %rsi
lea addresses_D_ht+0xcfcc, %rdi
clflush (%rsi)
dec %rax
mov $49, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0x1c3c, %rcx
nop
nop
add $56471, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rcx)
nop
add $17568, %rax
lea addresses_D_ht+0x132cc, %rcx
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x91cc, %rsi
lea addresses_A_ht+0x103b8, %rdi
clflush (%rsi)
nop
nop
add $56240, %r10
mov $107, %rcx
rep movsb
nop
dec %rcx
lea addresses_D_ht+0x18dcc, %r8
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r8)
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_US+0x1f64c, %r14
nop
nop
nop
nop
and $54085, %r8
movups (%r14), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
and $61718, %rcx

// Store
lea addresses_UC+0x103cc, %rdx
xor %r10, %r10
movb $0x51, (%rdx)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_RW+0xa4e2, %rbx
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
cmp $11515, %r8

// Faulty Load
lea addresses_US+0xa3cc, %rdx
nop
nop
nop
nop
nop
sub %rdi, %rdi
movaps (%rdx), %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'7a': 1, '92': 1, '8e': 1, 'e4': 1, '51': 19569, '00': 2247, 'da': 1, '28': 1, 'bc': 1, 'ce': 1, 'aa': 1, 'e8': 1, '32': 1, 'd8': 1, 'd4': 1}
51 51 51 51 51 51 00 00 51 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 00 51 51 00 00 51 51 00 51 51 51 00 51 51 51 51 51 00 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51
*/
