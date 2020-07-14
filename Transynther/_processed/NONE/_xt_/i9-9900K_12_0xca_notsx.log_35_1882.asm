.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x14c8f, %r15
nop
nop
nop
sub $8982, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0xbe0b, %r14
and %r11, %r11
mov (%r14), %r13w
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x17998, %r15
sub %rdi, %rdi
movb $0x61, (%r15)
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x6998, %r12
nop
nop
nop
nop
xor $28080, %r13
movw $0x6162, (%r12)
nop
nop
xor $18189, %r15
lea addresses_D_ht+0xca48, %rdx
nop
nop
nop
and $44241, %r15
mov (%rdx), %r11w
add $51580, %rdx
lea addresses_normal_ht+0xf08, %rsi
lea addresses_WT_ht+0x1cc58, %rdi
nop
cmp %rdx, %rdx
mov $33, %rcx
rep movsw
nop
nop
dec %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rdi
push %rdx

// Store
lea addresses_WT+0xa798, %rax
nop
nop
nop
dec %rdx
movb $0x51, (%rax)
nop
nop
nop
sub $44717, %rdi

// Load
lea addresses_PSE+0x15960, %r12
sub $8048, %r14
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
xor %rdi, %rdi

// Store
lea addresses_normal+0x10978, %r11
nop
nop
nop
dec %r12
movw $0x5152, (%r11)
nop
nop
nop
nop
xor $22447, %r11

// Store
mov $0xf98, %r15
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%r15)
nop
nop
nop
and $47414, %rdx

// Store
lea addresses_RW+0xb998, %rax
nop
xor %r15, %r15
movb $0x51, (%rax)
add $31910, %rax

// Load
lea addresses_WT+0xa798, %r15
and %rax, %rax
mov (%r15), %di
nop
nop
nop
nop
cmp %r12, %r12

// Load
lea addresses_WC+0x19e75, %rax
xor $27587, %r12
mov (%rax), %r11d
nop
and %r12, %r12

// Store
lea addresses_US+0x1f698, %rax
add $49407, %r12
movw $0x5152, (%rax)
nop
xor $42172, %rdi

// Store
lea addresses_UC+0x15598, %r15
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%r15)
nop
nop
nop
cmp $36913, %rdi

// Store
lea addresses_US+0x5d10, %r15
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r15)
nop
nop
nop
nop
nop
and $60594, %r11

// Store
mov $0x1da9ff0000000b98, %rdi
nop
nop
cmp $64677, %r11
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
nop
add $32553, %r14

// Store
lea addresses_WC+0x18998, %r15
add $55808, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
nop
add $52904, %r11

// Faulty Load
lea addresses_WT+0xa798, %r15
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'39': 35}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
