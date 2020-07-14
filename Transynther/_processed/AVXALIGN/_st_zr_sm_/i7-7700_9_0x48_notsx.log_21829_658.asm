.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5629, %rbx
nop
nop
and %r8, %r8
mov (%rbx), %di
nop
nop
inc %r13
lea addresses_WC_ht+0x12b2b, %r10
and %rbp, %rbp
movups (%r10), %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x11e93, %rsi
lea addresses_UC_ht+0x16f93, %rdi
nop
nop
nop
cmp $40808, %rbp
mov $64, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0xc484, %rcx
nop
nop
and $8172, %rdi
mov (%rcx), %ebp
nop
nop
nop
sub $33864, %r13
lea addresses_normal_ht+0xe793, %r13
clflush (%r13)
nop
nop
xor $45862, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
cmp $1356, %rsi
lea addresses_WT_ht+0xcd22, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov (%rdi), %dx
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x661, %rdi
clflush (%rdi)
nop
nop
cmp $50721, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xc113, %rdx
nop
sub $2648, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rdx)
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0xea13, %rsi
lea addresses_A_ht+0x464f, %rdi
dec %rbx
mov $58, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_A_ht+0xc793, %rdi
and %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rdi)
nop
xor $45305, %rcx
lea addresses_normal_ht+0x1a393, %rsi
lea addresses_normal_ht+0xa19d, %rdi
nop
nop
add $56799, %r10
mov $63, %rcx
rep movsl
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x9a93, %rcx
nop
and $10360, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rcx)
cmp %rbp, %rbp
lea addresses_UC_ht+0x19793, %rcx
nop
nop
nop
nop
nop
cmp $52491, %r10
mov (%rcx), %bx
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x10413, %rsi
lea addresses_normal_ht+0x8461, %rdi
and %rbx, %rbx
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $11270, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rsi

// Load
lea addresses_A+0x18719, %rbx
nop
nop
nop
nop
nop
cmp $58427, %r13
movb (%rbx), %r9b
nop
nop
nop
nop
add %r9, %r9

// Store
lea addresses_RW+0xbe0b, %r11
clflush (%r11)
nop
nop
inc %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_D+0x19393, %rax
nop
nop
nop
cmp %r11, %r11
movb $0x51, (%rax)
cmp $39396, %r11

// Store
mov $0x281d6d000000011b, %rbx
nop
nop
nop
sub %rsi, %rsi
movb $0x51, (%rbx)
and $55105, %rsi

// Store
lea addresses_US+0x19413, %r9
nop
nop
nop
nop
nop
sub %rax, %rax
movb $0x51, (%r9)
and $51497, %rsi

// Load
lea addresses_D+0x18793, %r9
nop
nop
nop
nop
add %rsi, %rsi
mov (%r9), %r8w
nop
cmp $14438, %r8

// Load
lea addresses_US+0x4513, %r11
nop
nop
nop
nop
nop
add $27445, %r9
movb (%r11), %al
sub $3153, %rax

// Store
lea addresses_A+0xd093, %rbx
nop
nop
xor %r8, %r8
movb $0x51, (%rbx)
nop
add %r8, %r8

// Load
lea addresses_UC+0x31ef, %r11
nop
add $18638, %rsi
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
nop
nop
sub $29252, %r13

// Store
lea addresses_PSE+0x1ef93, %r11
nop
nop
nop
nop
sub %r13, %r13
movw $0x5152, (%r11)
nop
add %r13, %r13

// Faulty Load
lea addresses_PSE+0x1ef93, %r9
cmp $23549, %r13
movaps (%r9), %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %r9
and $0xff, %r8
shlq $12, %r8
mov (%r9,%r8,1), %r8
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_A', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_NC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 2}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'52': 19382, '00': 2447}
52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 52 52 52 52 00 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 00 00 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 00 52 00 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 00 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 00 00 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 00 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
