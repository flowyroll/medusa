.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16e25, %rdi
sub $51441, %r11
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r8
nop
dec %r11
lea addresses_D_ht+0x17925, %rdx
nop
nop
nop
nop
sub $56878, %r9
mov (%rdx), %r15
nop
nop
nop
and $62877, %r9
lea addresses_WC_ht+0x65c5, %r11
nop
nop
nop
nop
inc %rsi
movb (%r11), %r15b
nop
nop
nop
nop
xor $1832, %rdx
lea addresses_A_ht+0x2945, %rdi
nop
nop
nop
nop
nop
xor $33673, %r11
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x35e5, %rsi
nop
nop
nop
cmp %r11, %r11
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
add $49804, %r8
lea addresses_WT_ht+0xa525, %rsi
nop
nop
nop
nop
nop
sub $12809, %r9
mov $0x6162636465666768, %r8
movq %r8, (%rsi)
nop
nop
cmp %r15, %r15
lea addresses_A_ht+0x15235, %r9
clflush (%r9)
nop
sub $45440, %rsi
movl $0x61626364, (%r9)
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1dc65, %rsi
lea addresses_A_ht+0xfe09, %rdi
clflush (%rsi)
sub %rdx, %rdx
mov $40, %rcx
rep movsq
nop
nop
nop
nop
cmp $5938, %rcx
lea addresses_WC_ht+0x166f1, %rsi
lea addresses_A_ht+0x17236, %rdi
add $47103, %r11
mov $73, %rcx
rep movsb
nop
nop
nop
nop
cmp $30308, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0x15125, %rcx
nop
add %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
cmp %rbp, %rbp

// Store
lea addresses_normal+0x18a5, %r15
nop
nop
add %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
cmp %rdi, %rdi

// Load
lea addresses_WC+0x11c65, %rbp
nop
dec %r9
mov (%rbp), %edi
nop
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_US+0x18b25, %rbp
nop
nop
nop
nop
and %r12, %r12
vmovups (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
dec %r12

// Store
lea addresses_A+0x57ad, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%rcx)
xor %rdx, %rdx

// Store
lea addresses_RW+0x1a781, %r12
clflush (%r12)
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r12)
nop
nop
sub $43987, %r15

// Faulty Load
lea addresses_UC+0x11925, %r9
inc %rdi
mov (%r9), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'ff': 1}
ff
*/
