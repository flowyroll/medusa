.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7c06, %rbx
nop
lfence
mov (%rbx), %rbp
nop
nop
nop
nop
nop
and $37839, %r15
lea addresses_normal_ht+0xbc1e, %rsi
lea addresses_WT_ht+0x1d06f, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $91, %rcx
rep movsq
and $1726, %r11
lea addresses_D_ht+0x1ac4a, %rbp
nop
sub %r11, %r11
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm2
vpextrq $0, %xmm2, %rdi
nop
cmp $5758, %rbx
lea addresses_D_ht+0x1858e, %rsi
lea addresses_normal_ht+0x17f6a, %rdi
nop
nop
sub $53503, %r9
mov $85, %rcx
rep movsb
nop
nop
nop
nop
xor $7742, %rsi
lea addresses_UC_ht+0x165aa, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %r11, %r11
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %r15
inc %rbx
lea addresses_normal_ht+0x5b8a, %r9
nop
add $62644, %rbp
movb $0x61, (%r9)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x182ea, %r15
nop
nop
sub %r9, %r9
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x18a, %r15
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r15)
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x7a0a, %rsi
lea addresses_D_ht+0xcb8a, %rdi
nop
xor $64580, %rbx
mov $91, %rcx
rep movsw
cmp $36448, %r15
lea addresses_WT_ht+0x1617a, %rsi
nop
nop
nop
nop
and $3945, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rsi)
add %rbx, %rbx
lea addresses_normal_ht+0x818a, %rbp
nop
nop
and $53555, %rdi
mov (%rbp), %cx
nop
nop
nop
nop
cmp $54114, %rdi
lea addresses_D_ht+0x130a, %rsi
lea addresses_WC_ht+0x166fa, %rdi
xor $61945, %rbx
mov $3, %rcx
rep movsq
nop
nop
and $43446, %rbx
lea addresses_UC_ht+0x1cdfa, %rbx
nop
nop
nop
add $54719, %rcx
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
xor $27953, %rbp
lea addresses_WC_ht+0x1888a, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov (%rdi), %rbp
nop
nop
nop
nop
and $26859, %r15
lea addresses_WT_ht+0x150e2, %rdi
nop
nop
nop
nop
sub $61424, %r9
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x16d8a, %r10
nop
nop
xor $31817, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
xor $35265, %rdx

// Store
mov $0x3ca, %r11
nop
and %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
dec %rsi

// Load
lea addresses_US+0xa80a, %r12
nop
nop
nop
and $3245, %r8
mov (%r12), %dx
nop
dec %r11

// Store
lea addresses_UC+0x18d8a, %rsi
add $37029, %r8
movl $0x51525354, (%rsi)
nop
xor $42795, %rdx

// Store
lea addresses_WC+0x1de8a, %rcx
clflush (%rcx)
nop
sub $34396, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
sub $22752, %rsi

// Store
lea addresses_normal+0x16d8a, %rcx
nop
nop
nop
nop
nop
dec %r12
movl $0x51525354, (%rcx)
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_normal+0x16d8a, %rdx
nop
nop
nop
nop
dec %r8
movl $0x51525354, (%rdx)
nop
nop
dec %r11

// Faulty Load
lea addresses_normal+0x16d8a, %r12
nop
nop
nop
nop
nop
and $34776, %r8
mov (%r12), %edx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_US', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
