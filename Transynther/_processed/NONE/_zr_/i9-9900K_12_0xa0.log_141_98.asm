.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x25c3, %r15
clflush (%r15)
nop
nop
nop
nop
xor %rax, %rax
movb $0x61, (%r15)
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x4553, %rsi
lea addresses_A_ht+0x19c33, %rdi
inc %r12
mov $35, %rcx
rep movsb
nop
nop
nop
nop
and $23945, %rcx
lea addresses_UC_ht+0x5553, %rsi
cmp %r12, %r12
mov (%rsi), %r8d
nop
nop
nop
nop
nop
inc %r15
lea addresses_UC_ht+0x11553, %rbp
nop
nop
xor %r15, %r15
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
cmp $17115, %rax
lea addresses_A_ht+0x8d3, %rsi
lea addresses_A_ht+0x16783, %rdi
nop
nop
nop
inc %rax
mov $20, %rcx
rep movsw
nop
nop
nop
dec %r12
lea addresses_D_ht+0x5153, %rsi
lea addresses_A_ht+0x3313, %rdi
clflush (%rsi)
nop
nop
add %r15, %r15
mov $22, %rcx
rep movsw
xor $64201, %rdi
lea addresses_A_ht+0x3097, %rsi
lea addresses_normal_ht+0x12153, %rdi
clflush (%rsi)
nop
sub $50418, %r12
mov $98, %rcx
rep movsb
xor $34561, %rsi
lea addresses_D_ht+0x1db53, %rax
xor %r15, %r15
movl $0x61626364, (%rax)
nop
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x8780, %rsi
lea addresses_WC_ht+0x1a693, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r8, %r8
mov $121, %rcx
rep movsl
nop
nop
nop
add $1002, %rax
lea addresses_WC_ht+0x7953, %rsi
lea addresses_WC_ht+0x1b067, %rdi
clflush (%rsi)
nop
add %r12, %r12
mov $87, %rcx
rep movsb
nop
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x1ce53, %r10
nop
nop
nop
cmp $24414, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r10)
xor $30118, %rcx

// Store
lea addresses_A+0x8253, %rdi
nop
nop
nop
nop
nop
and $21053, %r10
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
sub $45866, %rbx

// Store
lea addresses_D+0x11073, %rdx
nop
xor $54363, %r15
movb $0x51, (%rdx)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0x943, %rdi
nop
cmp %r10, %r10
movw $0x5152, (%rdi)
nop
nop
nop
nop
cmp $8488, %rbx

// Store
lea addresses_UC+0xf553, %r8
nop
and %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
nop
cmp $1537, %rbx

// Store
mov $0xc17, %rcx
clflush (%rcx)
dec %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rcx)
nop
sub $6298, %rcx

// Faulty Load
lea addresses_A+0x9d53, %rcx
nop
nop
nop
nop
sub $17274, %r15
mov (%rcx), %r10w
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'00': 141}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
