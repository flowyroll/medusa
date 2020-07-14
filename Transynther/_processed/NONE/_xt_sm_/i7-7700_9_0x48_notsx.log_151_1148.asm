.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x11822, %rbp
nop
inc %rdi
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0xe422, %rsi
lea addresses_normal_ht+0x1500c, %rdi
nop
nop
cmp $5821, %rax
mov $119, %rcx
rep movsb
nop
dec %rbp
lea addresses_WC_ht+0x1bb2, %rsi
lea addresses_D_ht+0x1d979, %rdi
nop
nop
sub %rdx, %rdx
mov $55, %rcx
rep movsl
and %rdx, %rdx
lea addresses_WT_ht+0x1c08a, %r11
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
xor $58318, %r14
lea addresses_WT_ht+0xe522, %rsi
lea addresses_WC_ht+0x1812, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
dec %rbp
mov $24, %rcx
rep movsw
dec %r14
lea addresses_UC_ht+0x5df6, %r14
nop
sub $12817, %rbp
movl $0x61626364, (%r14)
nop
dec %rax
lea addresses_normal_ht+0x175a2, %r14
nop
nop
nop
nop
nop
and $60871, %rdi
movb (%r14), %r11b
nop
and %rbp, %rbp
lea addresses_UC_ht+0x1e22, %rdi
add $4886, %rax
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
sub $63600, %rdi
lea addresses_WC_ht+0xa846, %rdx
nop
add $19730, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm2
movups %xmm2, (%rdx)
nop
nop
xor $25787, %rax
lea addresses_WC_ht+0xfe32, %rsi
clflush (%rsi)
and $43226, %r11
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x4722, %r14
nop
xor $64199, %rdx
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
and %rdx, %rdx
lea addresses_normal_ht+0x1be22, %rsi
lea addresses_WT_ht+0x970a, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $33, %rcx
rep movsb
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x196fa, %rax
nop
sub $32862, %r11
movb (%rax), %cl
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi

// Store
lea addresses_D+0x1a22, %rdi
add %r14, %r14
movb $0x51, (%rdi)
nop
nop
and %r11, %r11

// Store
lea addresses_WC+0x1e642, %r14
add $17515, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovaps %ymm4, (%r14)

// Exception!!!
mov (0), %rdi
nop
inc %r8

// Store
lea addresses_WT+0x1d522, %r14
cmp $9523, %rbp
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%r14)
nop
nop
add %r8, %r8

// Store
lea addresses_A+0x14fae, %rcx
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
and $38153, %rdi

// Store
lea addresses_D+0x190e1, %r12
clflush (%r12)
nop
xor $33198, %r11
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
xor $45151, %rbp

// Store
lea addresses_PSE+0xa622, %rdi
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rdi)
xor %r11, %r11

// Faulty Load
lea addresses_PSE+0xa622, %rdi
sub $37507, %r8
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'58': 151}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
