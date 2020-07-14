.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe58e, %r14
nop
xor $44174, %r10
mov (%r14), %r11w
nop
nop
nop
sub $42957, %rsi
lea addresses_D_ht+0x109ea, %rbx
nop
add %r15, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %rbx
vmovaps %ymm1, (%rbx)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x1939a, %rsi
nop
nop
nop
nop
xor %r14, %r14
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r11
nop
sub $63537, %r10
lea addresses_WT_ht+0x1ed92, %r15
nop
nop
nop
nop
nop
and $52912, %rcx
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
add %r11, %r11
lea addresses_UC_ht+0x1ab1a, %r15
nop
nop
add %rcx, %rcx
mov (%r15), %r11w
dec %r15
lea addresses_UC_ht+0x10a02, %rsi
nop
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xa556, %rsi
nop
cmp %r15, %r15
movw $0x6162, (%rsi)
dec %rcx
lea addresses_D_ht+0x839a, %rsi
lea addresses_D_ht+0x643a, %rdi
nop
nop
nop
nop
nop
and $16514, %r14
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $42569, %rbx
lea addresses_D_ht+0x879a, %rsi
lea addresses_A_ht+0x5b9a, %rdi
nop
xor $35710, %rbx
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
add $50804, %rsi
lea addresses_WT_ht+0x1609a, %r11
nop
nop
xor $18988, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r11)
nop
cmp $31596, %rsi
lea addresses_normal_ht+0x11cfa, %r15
nop
nop
sub $35333, %rcx
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
and $48367, %r14
lea addresses_UC_ht+0xeb9a, %rcx
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x1ee9a, %r10
clflush (%r10)
nop
nop
xor $15507, %rsi
movb (%r10), %bl
nop
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x8b9a, %rax
nop
nop
and %r15, %r15
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'49': 3, '46': 2, '48': 1, '00': 3}
49 46 00 00 00 46 49 49 48
*/
