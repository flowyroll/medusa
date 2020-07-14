.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16b6c, %rsi
lea addresses_D_ht+0x16c4, %rdi
clflush (%rsi)
nop
nop
nop
dec %r11
mov $87, %rcx
rep movsl
xor %r13, %r13
lea addresses_normal_ht+0x896c, %rsi
lea addresses_D_ht+0x1436c, %rdi
nop
nop
nop
nop
cmp $33137, %r11
mov $50, %rcx
rep movsq
nop
nop
add $22599, %rdi
lea addresses_normal_ht+0x8c04, %rsi
lea addresses_WT_ht+0x159fc, %rdi
nop
nop
nop
and $51036, %rbp
mov $125, %rcx
rep movsl
nop
nop
nop
inc %rdi
lea addresses_A_ht+0xa8f0, %rbp
nop
and %rax, %rax
movb $0x61, (%rbp)
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1dd6c, %rsi
lea addresses_normal_ht+0xbc6c, %rdi
nop
dec %r12
mov $99, %rcx
rep movsl
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x436c, %rsi
lea addresses_WC_ht+0x1817f, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r11, %r11
mov $103, %rcx
rep movsq
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x922c, %rbp
dec %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
nop
add $20005, %rax
lea addresses_WT_ht+0x1562c, %rcx
nop
nop
and $17151, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
cmp $12506, %rax
lea addresses_WT_ht+0x1889b, %rsi
lea addresses_normal_ht+0xa294, %rdi
nop
dec %r13
mov $66, %rcx
rep movsw
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x1e8f4, %r12
clflush (%r12)
nop
nop
cmp $8216, %rsi
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
nop
sub $20912, %r11
lea addresses_D_ht+0x16b6c, %rax
nop
nop
nop
nop
and $49547, %r12
mov (%rax), %edi
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0xdb6c, %rcx
nop
nop
sub $55850, %r12
mov (%rcx), %di
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x762c, %r11
dec %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r11)
nop
nop
nop
and $38703, %rax
lea addresses_WC_ht+0x1336c, %rdi
nop
nop
nop
nop
add %r13, %r13
mov (%rdi), %ax
nop
nop
nop
xor $52401, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdx

// Faulty Load
mov $0x36c, %r11
nop
nop
sub %rdx, %rdx
movups (%r11), %xmm2
vpextrq $1, %xmm2, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rdx
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'49': 2}
49 49
*/
