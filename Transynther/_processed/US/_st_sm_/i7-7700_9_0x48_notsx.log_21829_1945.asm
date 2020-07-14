.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1e863, %rsi
lea addresses_A_ht+0x1cff, %rdi
nop
nop
nop
nop
xor $55971, %r11
mov $99, %rcx
rep movsb
nop
nop
and %r8, %r8
lea addresses_D_ht+0x146d3, %rsi
lea addresses_WC_ht+0x19e56, %rdi
nop
nop
nop
cmp %r10, %r10
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $19678, %r11
lea addresses_WT_ht+0xec73, %rdi
and $28666, %rdx
mov (%rdi), %r8w
sub %rsi, %rsi
lea addresses_UC_ht+0x10a43, %r8
add %rdi, %rdi
movups (%r8), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
xor %rdx, %rdx
lea addresses_WT_ht+0x1e7e3, %r11
clflush (%r11)
nop
nop
nop
nop
nop
sub $7872, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r11)
nop
nop
add $63217, %rdx
lea addresses_A_ht+0x135e3, %rsi
lea addresses_UC_ht+0x2b23, %rdi
nop
nop
nop
cmp $60974, %r8
mov $72, %rcx
rep movsl
sub %rcx, %rcx
lea addresses_WT_ht+0x1e0bf, %rsi
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xfad3, %rsi
lea addresses_A_ht+0x194a3, %rdi
nop
nop
dec %rax
mov $86, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x133e3, %r8
nop
and %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
nop
nop
cmp $10562, %rcx
lea addresses_UC_ht+0x14c67, %rcx
nop
nop
nop
nop
nop
add %r11, %r11
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x31e3, %rax
nop
nop
nop
sub %r10, %r10
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
cmp $22846, %r11
lea addresses_A_ht+0xde83, %rax
nop
nop
nop
nop
add $44922, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x81e3, %r10
nop
xor $31211, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r10)
nop
add %r8, %r8
lea addresses_UC_ht+0xb5a3, %rsi
lea addresses_A_ht+0x14dd3, %rdi
nop
nop
nop
and $63888, %r10
mov $5, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xde3, %r8
clflush (%r8)
nop
cmp $64131, %rdx
mov (%r8), %di
nop
sub $36769, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rdx

// Load
lea addresses_UC+0x924f, %r11
add $6564, %rbx
mov (%r11), %edx
nop
nop
nop
xor $6342, %r15

// Store
mov $0xa57, %r12
clflush (%r12)
nop
nop
nop
inc %r8
movl $0x51525354, (%r12)
dec %r15

// Store
lea addresses_RW+0x10925, %r12
nop
nop
nop
nop
nop
dec %r8
movw $0x5152, (%r12)
nop
nop
nop
xor $5171, %rbx

// Store
lea addresses_US+0xcde3, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor $12264, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)

// Exception!!!
nop
mov (0), %r14
nop
nop
nop
nop
and %rdx, %rdx

// Load
mov $0xde3, %r14
nop
inc %r11
vmovntdqa (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
and $15600, %r14

// Store
lea addresses_D+0x9ce3, %r8
clflush (%r8)
nop
nop
nop
sub $46038, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
nop
xor $25343, %r11

// Faulty Load
lea addresses_US+0xcde3, %r14
nop
nop
cmp $7434, %rdx
mov (%r14), %ebx
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 11}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
