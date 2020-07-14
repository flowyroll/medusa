.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rdi
lea addresses_A_ht+0xcfd2, %r12
nop
nop
nop
nop
nop
and $27037, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
cmp $48294, %r11
lea addresses_normal_ht+0x1fd2, %r15
nop
nop
nop
nop
nop
cmp $18079, %rbx
movups (%r15), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x1ebe5, %r11
clflush (%r11)
add $53122, %r9
movw $0x6162, (%r11)
nop
cmp %r9, %r9
lea addresses_A_ht+0x39d2, %rbx
nop
nop
nop
nop
nop
and $25032, %r12
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
inc %r15
lea addresses_D_ht+0x1d0d2, %r9
nop
nop
nop
nop
xor $18366, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
and $0xffffffffffffffc0, %r9
movaps %xmm0, (%r9)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x81b2, %rdi
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%rdi)
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x19ed2, %r12
sub $49660, %r15
movb (%r12), %r13b
nop
cmp %r12, %r12
lea addresses_WC_ht+0x10b6e, %r13
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%r13)
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x1eade, %rbx
nop
nop
and %r13, %r13
movl $0x61626364, (%rbx)
nop
nop
nop
cmp $46955, %r12
lea addresses_A_ht+0xb052, %r12
mfence
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
add $38826, %rbx
lea addresses_D_ht+0x190d2, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov (%rdi), %r15d
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x1d672, %rbx
clflush (%rbx)
dec %r15
mov (%rbx), %r9w
nop
nop
dec %r13
lea addresses_WT_ht+0xfcd2, %rbx
nop
nop
nop
nop
nop
dec %r11
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x10cc2, %r11
nop
nop
nop
nop
nop
add %r12, %r12
movw $0x6162, (%r11)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0xaea2, %rbx
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
nop
cmp $1945, %r12
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xfe12, %rcx
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
dec %rsi

// Store
lea addresses_PSE+0x1b652, %r15
nop
and %r11, %r11
movw $0x5152, (%r15)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x36d2, %r14
nop
nop
sub %rcx, %rcx
movb $0x51, (%r14)
inc %rsi

// Faulty Load
mov $0x1ffc0b00000006d2, %rcx
nop
nop
nop
nop
inc %r15
mov (%rcx), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'00': 19319, 'a0': 17, '51': 2493}
51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 51 51 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 51 00 51 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 51 51 00 00 00 00 51 00 51 00 00 00 00 00 00 00 00 00 a0 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00
*/
