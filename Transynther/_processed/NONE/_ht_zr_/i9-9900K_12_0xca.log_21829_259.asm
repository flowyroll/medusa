.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x2209, %rsi
lea addresses_A_ht+0x10609, %rdi
nop
nop
nop
add $57700, %r8
mov $90, %rcx
rep movsw
nop
nop
xor $53378, %r15
lea addresses_WT_ht+0x18509, %rsi
lea addresses_normal_ht+0xea8e, %rdi
nop
nop
nop
add $38078, %r11
mov $113, %rcx
rep movsb
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x18149, %rsi
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
cmp $37867, %rdi
lea addresses_UC_ht+0xf209, %rsi
lea addresses_normal_ht+0x1889, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $64, %rcx
rep movsq
nop
nop
nop
nop
add $47351, %rsi
lea addresses_D_ht+0x3a09, %rsi
lea addresses_UC_ht+0xc209, %rdi
nop
nop
nop
nop
nop
cmp $46627, %r11
mov $113, %rcx
rep movsw
nop
nop
nop
nop
and $5381, %r15
lea addresses_UC_ht+0x15209, %rsi
lea addresses_D_ht+0x18109, %rdi
add $62210, %rdx
mov $29, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $8690, %rdi
lea addresses_WC_ht+0x404d, %rbp
clflush (%rbp)
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x2889, %rsi
lea addresses_D_ht+0x11409, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $48, %rcx
rep movsw
nop
nop
nop
nop
add $18930, %r15
lea addresses_WT_ht+0xcd09, %rbp
clflush (%rbp)
add $36462, %r11
mov (%rbp), %rdi
nop
nop
nop
nop
nop
add %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbx
push %rsi

// Faulty Load
lea addresses_WT+0xe209, %r10
nop
nop
nop
cmp %rsi, %rsi
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'49': 5602, '00': 10738, '46': 5489}
00 00 46 00 00 49 49 00 49 00 49 00 46 00 46 00 46 49 00 49 00 49 00 46 00 46 49 49 49 49 00 46 00 46 00 46 00 49 49 49 00 49 00 00 46 00 46 00 46 00 00 46 49 00 49 00 49 00 49 00 46 00 46 00 49 46 00 46 00 46 00 46 00 46 00 49 49 00 49 00 46 00 46 00 46 00 00 49 49 00 49 49 00 46 00 46 00 00 49 00 46 00 46 00 00 49 00 49 00 46 49 00 49 00 49 00 46 00 46 00 46 00 46 00 00 49 00 49 00 49 00 46 00 46 00 46 00 00 49 49 00 46 00 46 00 46 49 00 49 00 49 00 46 00 46 00 46 00 00 49 00 49 00 46 00 46 00 46 00 49 49 49 49 00 49 49 00 49 49 00 00 46 00 46 00 49 49 46 00 49 00 49 00 49 46 00 46 00 46 00 46 00 46 00 00 49 49 00 00 46 00 46 00 49 00 49 00 49 00 46 00 46 00 49 00 49 00 46 00 46 00 46 00 46 49 00 49 00 46 00 49 49 00 49 00 49 00 46 00 46 00 46 00 00 49 00 49 49 00 46 00 46 00 00 49 00 49 49 00 49 49 49 00 49 49 00 46 49 49 49 49 46 00 49 00 49 00 49 00 46 00 46 00 46 00 00 49 49 00 46 00 49 49 46 00 49 00 49 00 49 46 00 46 00 46 46 46 00 46 00 00 49 00 46 00 49 00 49 00 49 00 46 00 46 00 46 00 46 00 49 49 00 46 00 46 00 46 00 49 00 49 46 00 46 00 46 00 46 00 00 49 00 46 00 49 49 46 00 49 00 49 00 00 46 00 00 46 00 00 49 00 46 00 00 49 00 46 00 00 49 00 49 46 00 46 00 46 00 46 00 46 00 00 49 00 49 00 49 00 00 46 00 49 00 49 46 00 00 46 00 46 00 46 00 46 00 00 49 49 00 00 46 00 46 00 46 00 49 00 46 00 46 00 00 49 00 49 00 00 46 00 46 00 46 00 00 49 00 46 00 46 00 00 49 00 49 00 49 00 46 00 46 00 46 00 00 49 00 49 00 49 00 46 00 46 00 00 49 49 00 49 00 00 46 00 46 00 46 00 46 00 46 00 46 00 49 49 00 00 46 00 46 00 49 49 46 00 49 49 00 49 00 49 00 46 00 46 00 46 00 00 49 49 00 49 49 49 00 49 00 46 00 46 00 46 00 00 49 49 00 00 00 46 00 49 00 49 00 49 00 46 00 46 00 46 00 00 00 00 46 00 46 00 49 00 49 00 49 00 46 00 46 00 46 00 00 49 49 00 00 00 46 00 49 00 49 00 46 00 46 00 46 00 00 49 00 49 00 46 00 46 00 00 49 00 49 00 46 00 49 00 49 00 00 46 00 46 00 46 00 00 49 00 49 00 49 00 46 00 46 00 46 00 00 49 49 00 46 00 00 46 00 49 49 49 00 49 00 49 00 46 00 46 00 46 00 46 00 00 49 49 00 00 46 00 46 00 46 00 49 00 49 00 46 00 46 49 00 49 49 00 46 00 46 00 46 00 46 00 49 49 00 46 00 46 00 46 00 00 49 00 49 49 00 46 00 46 00 46 00 46 00 46 00 46 49 00 00 49 49 00 46 00 46 00 46 00 00 49 00 49 00 49 46 00 00 46 00 46 00 46 00 00 49 00 49 49 00 46 00 46 00 46 00 00 00 00 49 00 00 46 00 46 00 00 49 00 49 46 00 46 00 00 00 49 46 00 00 46 00 00 49 49 00 49 46 00 46 00 46 00 46 00 00 00 00 49 00 00 46 00 46 00 49 00 46 00 46 00 46 00 49 49 46 00 46 00 49 00 49 00 49 00 46 00 46 00 49 00 49 49 00 46 00 46 00 46 00 49 49 00 00 00 46 00 49 00 49 46 00 46 00 46 00 46 00 00 49 49 49 49 46 00 46 00 46 00 46 00 46 00 00 49 49 00 46 00 46 00 46 00 46 00 49 49 46 00 46 00 46 00 46 00 46 00 00 49 00 49 00 49 00 46 00 46 00 46 49 00 49 49 00 46 00 46 00 46 00 00 49 49 00 46 00 46 00 46 00 49 00 49 00 49 46 00 46 00 46 00 49 49 00 49 49 49 00 00 00 46 00 49 49 49 00 49 00 46 00 00 49 49 00 46 00 46 00 46 00 49 49 49 00 49 00 49 46 00 46 00 46 00 46 00 46 00 00 49 00 49 00
*/
