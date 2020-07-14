.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c07e, %rbx
nop
nop
nop
nop
xor %r15, %r15
movw $0x6162, (%rbx)
nop
nop
nop
nop
dec %r11
lea addresses_A_ht+0x95be, %rax
nop
nop
nop
xor %r11, %r11
movb (%rax), %r13b
nop
nop
inc %r15
lea addresses_normal_ht+0x1331e, %r13
nop
nop
nop
nop
nop
and %r8, %r8
mov (%r13), %r10
nop
nop
nop
nop
nop
and $50233, %r10
lea addresses_WT_ht+0x1ad7e, %rsi
lea addresses_UC_ht+0x106fe, %rdi
nop
and %r11, %r11
mov $16, %rcx
rep movsb
nop
nop
nop
nop
xor $9612, %rcx
lea addresses_WT_ht+0xe2fe, %r11
and %r10, %r10
mov (%r11), %bx
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x1d085, %rsi
lea addresses_A_ht+0x124fe, %rdi
nop
nop
nop
inc %r13
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x6b3e, %r11
lfence
movl $0x61626364, (%r11)
add %rax, %rax
lea addresses_D_ht+0x17afe, %r13
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x1b27e, %r13
nop
nop
dec %r15
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rbx
nop
add $23540, %r10
lea addresses_WT_ht+0x12efe, %r15
nop
nop
nop
inc %rbx
mov (%r15), %r13d
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0xb586, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add $1262, %rsi
movl $0x61626364, (%r13)
nop
cmp $43356, %r13
lea addresses_D_ht+0x131fe, %rax
nop
nop
and %r11, %r11
movl $0x61626364, (%rax)
nop
nop
nop
and $23952, %rax
lea addresses_UC_ht+0x8b3e, %rsi
lea addresses_WC_ht+0x69e6, %rdi
nop
nop
xor $19394, %r11
mov $124, %rcx
rep movsw
nop
nop
xor $46007, %rsi
lea addresses_D_ht+0x15d1e, %rsi
lea addresses_WC_ht+0xb2fe, %rdi
nop
and $13216, %r8
mov $29, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x68fe, %rsi
lea addresses_WT+0x9cfe, %rdi
nop
nop
xor $44569, %r11
mov $121, %rcx
rep movsb
nop
nop
nop
add $39435, %r11

// REPMOV
lea addresses_PSE+0x1dc6e, %rsi
lea addresses_D+0x14266, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r9
mov $123, %rcx
rep movsq
nop
and $4683, %rcx

// Store
lea addresses_RW+0x4bfe, %r9
nop
nop
nop
and %rax, %rax
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_A+0x181fe, %r11
sub %rsi, %rsi
movb (%r11), %cl
nop
nop
nop
add $24373, %rdi

// REPMOV
lea addresses_RW+0x52fe, %rsi
lea addresses_A+0x64fe, %rdi
nop
nop
nop
xor %rax, %rax
mov $40, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $22627, %rcx

// Store
lea addresses_RW+0x52fe, %r14
add %rcx, %rcx
movl $0x51525354, (%r14)
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_RW+0x52fe, %rcx
nop
nop
nop
cmp %r9, %r9
mov (%rcx), %si
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_RW'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'54': 1108}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
