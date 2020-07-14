.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x11f7b, %rsi
lea addresses_WC_ht+0x1eabb, %rdi
nop
inc %r15
mov $33, %rcx
rep movsq
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x1e477, %rbp
nop
dec %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rbp)
and %r15, %r15
lea addresses_UC_ht+0x59ab, %r15
add %rbp, %rbp
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x7b, %rsi
lea addresses_A_ht+0xf37b, %rdi
clflush (%rsi)
clflush (%rdi)
nop
cmp $24316, %r11
mov $121, %rcx
rep movsb
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1913b, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%r11), %cx
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x365b, %rcx
clflush (%rcx)
nop
nop
nop
dec %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1a43b, %rsi
lea addresses_UC_ht+0x1b7a3, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $66, %rcx
rep movsq
nop
nop
nop
nop
sub $27069, %rdx
lea addresses_UC_ht+0x5f, %rbp
cmp $50610, %rdx
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xb17b, %rcx
nop
and %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp $21387, %r15
lea addresses_A_ht+0xe33f, %rcx
nop
nop
nop
nop
nop
dec %rdi
mov (%rcx), %r11
nop
nop
nop
nop
nop
cmp $60335, %r15
lea addresses_UC_ht+0x57f2, %rdx
add $10061, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm0, (%rdx)
xor $38507, %r11
lea addresses_normal_ht+0xbbe3, %rbp
nop
nop
and $35337, %rdx
movl $0x61626364, (%rbp)
nop
sub %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_WT+0x1277b, %rax
nop
nop
nop
nop
inc %rbp
movaps (%rax), %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'46': 59, '49': 204, '47': 36, '00': 21530}
00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00
*/
