.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12d65, %rsi
lea addresses_WT_ht+0xd63d, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $92, %rcx
rep movsw
nop
nop
inc %r8
lea addresses_normal_ht+0x6e3d, %r12
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x1331d, %rsi
nop
nop
nop
cmp $50587, %rcx
mov (%rsi), %r11w
add $33718, %rdi
lea addresses_WT_ht+0xfddd, %rcx
nop
and $17632, %rsi
mov (%rcx), %r12w
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
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

// Load
lea addresses_PSE+0x18c3d, %rax
nop
nop
nop
nop
dec %r15
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
nop
cmp $9318, %r10

// Load
lea addresses_RW+0xf29d, %r10
nop
nop
xor $15451, %r15
mov (%r10), %rbx
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_PSE+0x18c3d, %r15
nop
nop
nop
nop
nop
sub %r10, %r10
movb $0x51, (%r15)
sub %rbx, %rbx

// Store
lea addresses_A+0x1c7b5, %r13
nop
xor %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r13)
nop
cmp $41979, %r10

// Store
lea addresses_PSE+0x18c3d, %r15
inc %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
cmp $47139, %rbx

// REPMOV
lea addresses_WC+0x9d3d, %rsi
lea addresses_normal+0x1f589, %rdi
nop
sub $38673, %r11
mov $50, %rcx
rep movsq
nop
nop
and %r10, %r10

// Store
lea addresses_PSE+0x18c3d, %r15
nop
nop
nop
add %rcx, %rcx
movb $0x51, (%r15)
xor %rax, %rax

// Faulty Load
lea addresses_PSE+0x18c3d, %r10
clflush (%r10)
nop
nop
nop
cmp $8596, %rbx
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
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

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 8, 'type': 'addresses_RW', 'congruent': 4}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
